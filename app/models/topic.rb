class Topic < ActiveRecord::Base	
	has_many :posts, dependent: :destroy 

	mount_uploader :image, ImageUploader
end

