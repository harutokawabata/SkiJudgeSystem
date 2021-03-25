class Public::PostsController < ApplicationController
  def index
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    # @post.post_comments = @comment.id
    @comment = @post.build_comment(comment_params)
    if @post.save!
      redirect_to root_path
    end
  end
  
  private
  def post_params
    params.permit(:introduction, :comment_id)
  end
end
