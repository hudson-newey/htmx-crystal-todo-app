require "../lib/layout"

class Api_Layout < Layout
  def render(view : String) : String
    render_template("<app-root></app-root>", view)
  end

  def render_template(layout : String, view : String) : String
    layout_content = File.read(layout)
    view_content = File.read(view)
    layout_content.gsub("<app-root></app-root>", view_content)
  end
end