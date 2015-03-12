module ApplicationHelper

# The purpose of a helper method is to use ruby code to produce html in a view. 
# In this case, tell anytime that <%= my_name %> is used to add Joel Kaplan.

	def form_group_tag(errors, &block)
		if errors.any?
			content_tag :div, capture(&block), class: 'form-group has-error'
		else
			content_tag :div, capture(&block), class: 'form_group'
		end
	end

	def markdown_to_html(markdown)
		renderer = Redcarpet::Render::HTML.new
		extensions = {fenced_code_blocks: true}
		redcarpet = Redcarpet::Markdown.new(renderer, extensions)
		(redcarpet.render markdown).html_safe
	end

	def my_name
		"<h3>Joel Kaplan</h3>".html_safe
	end

end

