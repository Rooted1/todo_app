class DaysController < ApplicationController
  def index
    @days = Day.all
  end

  def new
    @day = Day.new
  end

  def create
    @day = Day.create(day_params)
  end

  def edit
    @day = Day.find(params[:id])
  end

  def update
    @day = Day.update(day_params)
  end

  def show
    @day = Day.find(params[:id])
  end

  def destroy
    @day = Day.find(params[:id])
  end

  private

  def day_params
    params.require(:day).permit(:name)
  end
end
