require "../../lib/controller"

class Index_Controller < Controller
  def initialize
    super(Default_Layout.new)
  end

  def get(ctx) : String
    @layout.render("./src/pages/index/index.html")
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
