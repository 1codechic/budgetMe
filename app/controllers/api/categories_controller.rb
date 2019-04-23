class Api::CategoriesController < ApplicationController

  def index
    @categories = Category.all
    render 'index.json.jbuilder'
  end

  def create
    category = Category.new(
      name: params[:category_name]
      )
    if category.save
      render json: {message: 'category created successfully'}, status: :created
    else
      render json: {errors: category.errors.full_message}, status: :bad_request
    end
  end

  def show
    @category = Category.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end

  def destroy
    category_id = params[:id]
    @category = category.find_by(id: category_id)
    @category.destroy
    render json: {message: 'category deleted'}
  end
end
