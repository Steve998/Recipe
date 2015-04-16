class WelcomeController < ApplicationController
  skip_before_action :authenticate
  
  def index
    @recipe = Recipe.all.order("created_at DESC").page(params[:page]).per(5)
    render 'recipes/index'
  end
end
