module ApplicationHelper
	def active?(path)
		"active" if current_page?(path) #This is returning the string active
	end
end
