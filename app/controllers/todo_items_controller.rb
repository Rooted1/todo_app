class TodoItemsController < ApplicationController
  def index
    @todo_items = TodoItem.all
  end

  def new
    @todo_item = TodoItem.new
    @categories = Category.all
    @days = Day.all
  end

  def create
    @todo_item = TodoItem.create(todo_item_params)
    redirect_to todo_item_path(@todo_item)
  end

  def edit
    @todo_item = TodoItem.find(params[:id])
  end

  def update
    @todo_item = TodoItem.update(todo_item_params)
    redirect_to todo_item_path(@todo_item)
  end

  def show
    @todo_item = TodoItem.find(params[:id])
  end

  def destroy
    @todo_item = TodoItem.find(params[:id])
  end

  private

  def todo_item_params
    params.require(:todo_item).permit(:title, :description, :category_id, :day_id)
  end
end
