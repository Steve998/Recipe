class CommentsController < ApplicationController

  def index
    @comment = Comment.all.order('created_at DESC')

  end

  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      redirect_to @comment, notice: "Comment Saved Successfully"
    else
      render 'new'
    end
  end

  def new
    @comment = Comment.new
  end

  def show
      @comment = Comment.all
    
  end


  def update
    if @comment.update(comment_params)
      redirect_to @comment, notice: "A Comment was successfully updated"
    else
      render 'edit'
    end
  end


  private
  def comment_params
    params.require(:comment).permit(:description, :user_id, :recipe_id)
  end
end
