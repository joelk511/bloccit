class Post < ActiveRecord::Base
	has_many :comments
	belongs_to :user

	default_scope { order('created_at DESC') }
	scope :ordered_by_title, -> { unscoped.order("title ASC") }
	scope :ordered_by_reverse_created_at, -> { unscoped.order('created_at DESC').reverse_order }

end


