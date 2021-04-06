class Public::CommentsController < ApplicationController
  def index
  end

  def new
    @comment = Conment.new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save!
      redirect_to root_path
    end
  end
  
  private
  def comment_params
    params.require(comment).permit(:text)
  end
    
end
