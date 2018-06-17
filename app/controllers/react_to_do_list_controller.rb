class ReactToDoListController < ApplicationController

  # GET /todos
  def index
    @todos = Todo.all
    render json: {todos: @todos}, status: :ok
  end

  # POST /todos
  def create
    @todo = Todo.new
    @todo.title = params[:title]
    @todo.content = params[:content]
    @result = @todo.save

    head :ok
  end

  # DELETE /todos/:id
  def destroy
    @todo = Todo.find_by(id: params[:id])
    if(@todo != nil)
      @todo.destroy
    end
    head :ok
  end

  private

end
