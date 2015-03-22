module Paginate
	def paginate(args = {})
		args[:page] ||= 0
		self.limit(10).offset(args[:page] * 10)
	end
end