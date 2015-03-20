require 'rails_helper'

describe Post do 
	describe "vote methods" do

		before do 
			@post = Post.create(title: 'post title', body: 'post body')
			3.times { @post.votes.create(value: 1) }
			2.times { @post.votes.create(value: -1)}