class Routes
  def routes
    routes = {
      "/"    => Index_Controller.new,
      "/404" => Page_Not_Found_Controller.new,
      "/about" => About_Controller.new,
      "/api/todo" => Todo_Controller.new,
    }
  end
end
