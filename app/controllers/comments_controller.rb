class CommentsController < ApplicationController

def new
  @post = Post.find(params[:comment_id])
  @comment = Comment.new 
end

def create
  @post = Post.find(params[:post_id])
  @comment = @post.comments.create(comment_params)
  @comment.user_id = current_user.id

  if @comment.save 
      flash[:notice] = "Comment was saved."
      redirect_to [@post.topic, @post]
  else
      flash[:error] = "There was an error saving the comment. Please try again."
  end
end

def destroy
  @post = @topic.posts.find(params[:post_id])
  @comment = @post.comments.find(params[:id]) 
  authorize @comment
  if @comment.destroy 
    flash[:notice] = "Comment was deleted."
    redirect_to [@post.topic]
  else
    flash[:error] = "There was an error deleting the comment. Please try again."
    redirect_to [@post.topic]
  end
end



def comment_params
    params.require(:comment).permit(:body)
end

end



    