class Topic < ActiveRecord::Base	
	has_many :posts, dependent: :destroy 

	scope :visible_to, -> (user) { user ? all : publicly_viewable }

	# scope :publicly_viawable, -> (user) { user ? all : where(public: true) } #publicly_viawable
	scope :publicly_viewable, -> { where(public: true) }
	
	#Only viewable to user who is granted #show authorization
	# scope :privately_viewable, -> (user) { user ? all : where(public: false) }#privately_viewable
	scope :privately_viewable, -> {where(public: false)}

end

