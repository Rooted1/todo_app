class TodoItemsController < ApplicationController
  skip_before_action :verify_authenticity_token
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
    @categories = Category.all
    @days = Day.all
  end

  def update
    @todo_item = TodoItem.find(params[:id])
    @todo_item.update(todo_item_params)
    redirect_to todo_item_path(@todo_item)
  end

  def show
    @todo_item = TodoItem.find(params[:id])
    @todo_items = TodoItem.all
  end

  def destroy
    @todo_items = TodoItem.all
    @todo_item = TodoItem.find(params[:id])
    @todo_item.destroy
    redirect_to todo_items_path(@todo_items)
  end

  private

  def todo_item_params
    params.require(:todo_item).permit(:title, :description, :category_id, :day_id)
  end
end
