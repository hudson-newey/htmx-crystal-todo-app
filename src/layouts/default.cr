require "../lib/layout"

class Default_Layout < Layout
  def initialize
    @layout_template = "./src/layouts/default.html"
  end

  def render(view : String) : String
    render_template(@layout_template, view)
  end

  def render_template(layout : String, view : String) : String
    layout_content = File.read(layout)
    view_content = File.read(view)
    layout_content.gsub("<app-root></app-root>", view_content)
  end
end
