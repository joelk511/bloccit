class FavoritesController < ApplicationController

def create
	@post = Post.find(params[:post_id])
	favorite = current_user.favorites.build(post: @post)

	if favorite.save 
	  flash[:notice] = "Favorited"
      redirect_to [@post.topic, @post]
  else
      flash[:error] = "There was an error favoriting. Please try again."
      redirect_to @post 
  end
end

def destroy 
	@post = Post.find(params[:post_id])
	favorite = current_user.favorites

	if favorite.destroy
		flash[:notice] = "Success"
		redirect_to @post
	else
		flash[:error] = "There was an error."
		redirect_to [@post.topic, @post]
	end
end


end
