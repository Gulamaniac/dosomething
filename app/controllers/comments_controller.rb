class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(comments_params)
    @comment.user = current_user

    if @comment.save
      format.html { redirect_to @comment, notice: 'Comment was successfully created.' }
    end

end
