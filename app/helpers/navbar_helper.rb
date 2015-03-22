module NavbarHelper
	def  nav_li text, path
		active = request.path == path ? :acive :nil
		content_tag :li, link_to(text, path), class: active	
	end
end
