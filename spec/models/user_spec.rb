require 'rails_helper'

	describe User do 

		include TestFactories

		describe '#favorited(post)' do
			it "returns 'nil' if the user has not favorited the post" do
				#Setup
					user = User.new(email: "Michael@example.com", password: "password")
					user.skip_confirmation!
					user.save!

					post = Post.create(title: "Hello World", body: "Yabba dabba do")
				#Execution
				#Validation
					expect(user.favorited(post)).to be_nil
			end

			it "returns the appropriate favorite if it exists" do
				user = User.new(email: "Michael@example.com", password: "password")
				user.skip_confirmation!
				user.save!

				post = Post.create(title: "Hello World", body: "Yabba dabba do")

				favorite = Favorite.create(post: post, user: user)

				#Execution
				#Validation
				expect(user.favorited(post)).to eq(favorite)

			end
		end
	end