class CommentsController < ApplicationController
  before_action :find_recipe

  def index
    @comment = @recipe.comments.all.order('created_at DESC')
  end

  def create
     @comment = @recipe.comments.new(comment_params)
     @comment.user = current_user
    if @comment.save
      redirect_to @recipe, notice: "Comment Saved Successfully"
    else
      render 'new'
    end
  end

  def new
    @comment = @recipe.comments.new
  end

  def show
    @comment = @recipe.comments.find(params[:id])
  end

  def update

    if @comment.update
      redirect_to [@recipe, @comment], notice: "A Comment was successfully updated"
    else
      render 'edit'
    end
  end

  private

  def comment_params
    params.require(:comment).permit( :description)
  end

  def find_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end
end
