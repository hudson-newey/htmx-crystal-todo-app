require "http/server"
require "./pages"
require "./config/routes"

module Htmx::Crystal::Todo::App
  VERSION = "0.1.0"
  router = Routes.new
  routes = router.routes

  server = HTTP::Server.new do |context|
      context.response.content_type = "text/html"

      activated_route = context.request.path

      if !routes.has_key?(activated_route)
        context.response.print Page_Not_Found_Controller.new.get(context)
        next
      end

      virtual_route = activated_route
      page_controller = routes[virtual_route]

      puts "#{activated_route} -> #{virtual_route}"

      if context.request.method == "GET"
        context.response.print page_controller.get(context)
      elsif context.request.method == "POST"
        context.response.print page_controller.post(context)
      elsif context.request.method == "PUT"
        context.response.print page_controller.put(context)
      elsif context.request.method == "PATCH"
        context.response.print page_controller.patch(context)
      elsif context.request.method == "DELETE"
        context.response.print page_controller.delete(context)
      end
  end

  port = 5173

  address = server.bind_tcp port
  puts "Website Started at http://#{address}/"

  server.listen
end
