class SummaryController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @summary = @post.summary.create(summray_params)
    redirect_to post_path(@post)
  end
end
