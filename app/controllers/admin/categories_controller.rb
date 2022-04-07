class Admin::CategoriesController < ApplicationController
  
  http_basic_authenticate_with name: ENV['ADMIN_NAME'], password: ENV['ADMIN_PASS']

  def index
    @cats = Category.order(id: :desc).all
  end

  private

  def category_params
    params.require(:category).permit(
      :name,
      :created_at,
      :updated_at
    )
  end

end
