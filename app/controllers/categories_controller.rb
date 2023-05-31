class CategoriesController < ApplicationController
  before_action :authenticate_user!, except: [:splash]

  def index
    @categories = Category.where(author_id: current_user.id)
  end

  def new
  end

  def create
  end

  def splash
  end
end
