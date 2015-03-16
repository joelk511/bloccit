class CommentsController < ApplicationController

def create
  @post = Post.find(params[:post_id])
  @comment = @post.comments.create(params[:id])
  @comment.user_id = current_user.id
  if @comment.save 
      flash[:notice] = "Comment was saved."
      redirect_to post_path(@post)
  else
      flash[:error] = "There was an error saving the comment. Please try again."
  end
end
end



    