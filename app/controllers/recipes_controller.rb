class RecipesController < ApplicationController
  before_action :find_recipe, only: [:show, :edit, :update, :destroy]

  def index
    @recipe = Recipe.all.order("created_at DESC").page(params[:page]).per(7)
  end

  def new
    @recipe = Recipe.new
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

  private

  def recipe_params
    params.require(:recipe).permit(:name, :ingredient, :steps, :user_id, :image, :url)
  end

  def find_recipe
    @recipe = Recipe.find(params[:id])
  end

end
