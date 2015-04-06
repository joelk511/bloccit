class Topic < ActiveRecord::Base	
	has_many :posts, dependent: :destroy 

	scope :visible_to, -> (user) { user ? all : where(public: true) }

	scope :publicly_viawable, -> (user) { user ? all : where(public: true) } #publicly_viawable

	scope :privately_viewable, -> (user) { user ? all : where(public: false) }#privately_viewable

	def publicly_viewable
	end

	def privately_viewable
	end

	def visible_to(user)
	end


end

