class StoriesController < ApplicationController

	#Forces a user to be singed in before they're able to access the Submit your story page. Only singed in visitor users can submit a story.
	# before_filter :authenticate_user!, except: [:index, :show]
	
	def new
	
	end

	def create
		#I now have data in my params. I need to create a new database object with this data, and do a save.
		
		#This creates a new active record Story object, which also creates the dataentry below in our database. The params correspond to our tabel's column names. Because there's a column in our table called "name", when we create this object, Active Record knows to store the value associated with name in our "name" column. Everything below will be added to our story table. 
		Story.create({name: params[:name], email: params[:email], narative: params[:narative], title: params[:title], story_image: params[:story_image]})
		redirect_to '/'
	end

	def index
		@stories = Story.all

	end

	def show
		@story = Story.find(params[:id])
		
	end

end