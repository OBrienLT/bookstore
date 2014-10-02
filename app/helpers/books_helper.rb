module BooksHelper
	def formatted_time(time)
		time.strftime("%d %H%M %B %Y")
	end
	def format_average_stars(book)
		average = book.average_stars
		if average
			pluralize(number_with_precision(average, precision: 1), 'star')
		else
			content_tag(:strong, 'No reviews')
		end
	end
end