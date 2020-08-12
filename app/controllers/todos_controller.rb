class TodosController < ApplicationController
  before_action :move_to_index, except: [:index, :show]
  
  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.create(todo_params)
    redirect_to todos_path
  end

  def show
    @todo = Todo.new
    @todo = Todo.find(params[:id])
  end

  private
    def todo_params
      params.require(:todo).permit(:title)
    end

    def move_to_index
      redirect_to action: :index unless user_signed_in?
    end
end