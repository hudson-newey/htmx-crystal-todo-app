require "diamond/controller"
require "../../layouts/default"

class About_Controller < Controller
  def initialize
    super(Default_Layout.new)
  end

  def get(ctx) : String
    @layout.render("./src/pages/about/about.html")
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
