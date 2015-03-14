def create
  def new
    @comment = Comment.find(params[:comment_id])
    @comment = Comment.new 
    authorize @comment 
  end

    def create
      @comment = Comment.find(params[:comment_id])
      @post = current_user.posts.build(post_params)
          authorize @comment
      if @comment.save 
        flash[:notice] = "Comment was saved."
        redirect_to [@topic, @post, @comment]
      else
        flash[:error] = "There was an error saving the comment. Please try again."
        render :new
      end
    end