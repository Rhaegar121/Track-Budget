class CategoriesController < ApplicationController
  before_action :authenticate_user!, except: [:splash]

  def index
    @categories = Category.where(author_id: current_user.id).includes(:purchases)
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(categories_params)
    if @category.save
      redirect_to categories_path, notice: 'Category was successfully created.'
    else
      redirect_to new_category_path, alert: 'Category was not created.'
    end
  end

  def destroy
    @category = Category.find(params[:id])
    if @category.destroy
      redirect_to categories_path, notice: 'Category was successfully deleted.'
    else
      redirect_to new_category_path, alert: 'Category was not deleted.'
    end
  end

  def splash; end

  private

  def categories_params
    params.require(:category).permit(:name, :icon).merge(author_id: current_user.id)
  end
end
