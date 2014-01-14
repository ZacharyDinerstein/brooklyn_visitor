require 'spec_helper'

describe "When viewing the welcome/index page" do 
	before do
		visit '/'
	end
	it 'should display site title' do
		page.should have_content("The Brooklyn Visitor")
	end
	it "should have a 'submit your story' link" do
		page.should have_link("Submit your story")
	end
	it "should redirect to create_story page when Submit your story is clicked" do
		click_link "Submit your story" 
		current_path.should == new_story_path
	end

end



