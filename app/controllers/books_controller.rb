class BooksController < ApplicationController
	def index
		@available_at = Time.now
		@books = Book.all
	end
	def show
		@book = Book.find(params[:id])
		@total_books = Book.count
	end
	def new
		@book = Book.new
	end
	def create
		@book = Book.new(book_params)
		@book.save
		redirect_to @book
	end

	def edit
		@book = Book.find(params[:id])
	end

	def update
		@book = Book.find(params[:id])
		@book.update(book_params)
		redirect_to @book
	end

	private

	def book_params
		params.require(:book).permit(:title, :author, :pages, :price)
	end
end