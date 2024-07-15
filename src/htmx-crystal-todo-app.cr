require "diamond/server"
require "diamond/router"
require "./pages"
require "./config/routes"

module Htmx::Crystal::Todo::App
  VERSION = "0.1.0"

  config_routes = Routes.new
  routes = config_routes.routes

  router = Router.new routes
  server = Diamond_Server.new router

  server.start
end
