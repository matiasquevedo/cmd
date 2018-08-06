module ApplicationHelper
	def link_badge badge,icon 
		html="<span style='font-size: 20px;' class='badge badge-#{badge}'><i class='far #{icon}'></i></span>"
		html.html_safe
	end
end
