class RecipesController < ApplicationController
  before_action :find_recipe, only: [:show, :edit, :update, :destroy]

  def index
    @recipe = Recipe.all.order("created_at DESC").page(params[:page]).per(5)
  end

  def new
    @recipe = Recipe.new
  end

  def edit

  end

  def show

  end

  def create
    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      redirect_to @recipe, notice: "Created new Recipe successfully"
    else
      render 'new'
    end
  end

  def update
    if @recipe.update(recipe_params)
      redirect_to @recipe, notice: "A Recipe was successfully updated"
    else
      render 'edit'
    end
  end


  private

  def recipe_params
    params.require(:recipe).permit(:name, :ingredient, :steps, :user_id, :image, :url)
  end

  def find_recipe
    @recipe = Recipe.find(params[:id])
  end

end
