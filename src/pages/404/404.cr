require "diamond/controller"
require "../../layouts/default"

class Page_Not_Found_Controller < Controller
  def initialize
    super(Default_Layout.new)
  end

  def get(ctx) : String
    @layout.render("./src/pages/404/404.html")
  end

  def post(ctx) : String
    ""
  end

  def put(ctx) : String
    ""
  end

  def patch(ctx) : String
    ""
  end

  def delete(ctx) : String
    ""
  end
end
