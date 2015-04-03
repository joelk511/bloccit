class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  
  has_many :posts, dependent: :destroy 
  has_many :comments, dependent: :destroy 
  has_many :votes, dependent: :destroy 
  has_many :favorites, dependent: :destroy 

  mount_uploader :avatar, AvatarUploader

  def admin?
  	role == 'admin'
  end

  def moderator?
  	role == 'moderator'
  end

  def favorited(post)
    #all of the user's favorites
    #Find all of the favorites with a particular a post id
    #moves from collection to individual
    favorites.find_by(post_id: post.id)
  end

end
