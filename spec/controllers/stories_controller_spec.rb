require 'spec_helper'

describe StoriesController do 
	before do
		@new_story = Story.create({name: "Zack Dinerstien", email: "zackdhome@gmail.com", title: "Subway Ridin", narative: "llisdfhsadf lijsadfihasidhf oiahsdflisdafih."}) 
	end
	describe "when visiting a specific story page" do
		before do
			get story_path
		end
		it "retrieves and displays all info pertaining to that story" do

		end
	end
end



