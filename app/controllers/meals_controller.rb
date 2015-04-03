class MealsController < ApplicationController


  def index
    @meal = Meal.all
    @meal = @meal.recipes.all

  end

  def new
    @meal = Meal.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @meal.save
      redirect_to @meal, notice: "Created new Meal successfully"
    else
      render 'new'
    end

  end

  def edit
  end

  def show
    @meal = Meal.all
  end

  def update

    if @meal.update
      redirect_to @meal, notice: "A Meal was successfully updated"
    else
      render 'edit'
    end
  end

  private

  def meal_params
    params.require(:meal).permit(:name, :user_id, :recipe_id)
  end

  def find_meal
      @meal = Meal.find(params[:id])
  end

end
