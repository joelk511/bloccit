def paginate
	Resource.limit(10).offset(page * 10)
end
