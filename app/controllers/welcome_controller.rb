class WelcomeController < ApplicationController

	def index
		x = HTTParty.get('https://data.cityofnewyork.us/api/views/kku6-nxdu/rows.json')
		@nyc_data = JSON(x.body)
	end

end



