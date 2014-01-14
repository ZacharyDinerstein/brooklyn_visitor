class StoriesController < ApplicationController

	def new
		x = HTTParty.get('https://data.cityofnewyork.us/api/views/kku6-nxdu/rows.json')
		@nyc_data = JSON(x.body)
	end

	def create
		redirect_to '/'
	end

	def show
		
	end

end