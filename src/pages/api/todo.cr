require "../../lib/controller"
require "../../layouts/api"
require "../../models/todo"

class Todo_Controller < Controller
  @todo_items : Array(Todo) = [
    Todo.new("Buy milk"),
    Todo.new("Buy eggs"),
    Todo.new("Buy bread")
  ] of Todo

  def initialize
    puts "Here"
    super(Api_Layout.new)
  end

  def get(ctx) : String
    result = ""

    if @todo_items.size > 0
      result = "<ul>"
      @todo_items.each do |todo|
        result += "<li>#{todo.@title}</li>"
      end
      result += "</ul>"
    else
      result = "<p>No todo items</p>"
    end

    result
  end

  def post(ctx) : String
    title = nil

    if body = ctx.request.body
      title = body.gets_to_end.split("=")[1].strip
    end

    "Title is required" unless title

    title = (title || "").gsub("%20", " ")
    @todo_items << Todo.new(title || "")

    get(ctx)
  end

  def delete(ctx) : String
    get(ctx)
  end

  def put(ctx) : String
    get(ctx)
  end

  def patch(ctx) : String
    get(ctx)
  end
end
