module ApplicationHelper

# The purpose of a helper method is to use ruby code to produce html in a view. 
# In this case, tell anytime that <%= my_name %> is used to add Joel Kaplan.

	def my_name
		"<h3>Joel Kaplan</h3>".html_safe
	end

end

