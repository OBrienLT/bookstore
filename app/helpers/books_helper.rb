module BooksHelper
	def formatted_time(time)
		time.strftime("%d %H%M %B %Y")
	end
end