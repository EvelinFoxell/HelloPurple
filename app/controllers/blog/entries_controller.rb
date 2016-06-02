class Blog::EntriesController < ApplicationController
	
	def index
		@entries = Entry.all
	end

	def new
		@entry = Entry.new
	end

	def create
		@entry = Entry.create(params[:entry].permit(:title, :body))
		render json: params[:entry]
		#redirect_to blog_entries_path
	end

end