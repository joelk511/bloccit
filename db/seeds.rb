require 'faker'


Post.delete_all
Comment.delete_all


# Create Posts

50.times do 
	Post.create!(
		title: Faker::Lorem.sentence,
		body: Faker::Lorem.paragraph
		)
end

# 1.times do
	special_post = Post.create!(
		title: "The greatest post on earth",
		body: "And here it is"
		)
# end

posts = Post.all

# Create Comments

100.times do
	Comment.create!(
		post: posts.sample,
		body: Faker::Lorem.paragraph
		)
end

	Comment.create!(
		post: special_post,
		body: "This is a unique comment"
		)


puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"