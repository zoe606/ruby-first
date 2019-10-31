class CategoriesController < ApplicationController
  def new
    @category = Category.new
  end

  def create
    @category = Category.new(params.require(:category).permit(:name))
    respond_to do |format|
      if @category.save
          format.html { redirect_to "/categories/new", notice: "Category success created!" }
      else
          format.html { redirect_to "/categories/new", notice: "Category wasn't success created." }
      end
    end
  end

  def index
    @category = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
      respond_to do |format|
        if @category.update(params.require(:category).permit(:name))
          format.html { redirect_to categories_path, notice: "Category was updated." }
        else
          format.html { render :edit}
        end
      end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    respond_to do |format|
      format.html { redirect_to categories_path, notice: "Categories was deleted." }
    end
  end

end
