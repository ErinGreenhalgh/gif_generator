class Admin::CategoriesController < ApplicationController
  def new
    @category = Category.new
  end

  def index
    @categories = Categories.all
  end

  def create
    @category = Category.create(category_params)
    if @category.save
      flash[:notice] = "Category created!"
      redirect_to @category
    else
      flash[:error] = "The category could not be created because #{@category.errors.full_messages.join(", ")}"
      render :new
    end 
  end

private

  def category_params
    params.require(:category).permit(:name)
  end
end
