require 'spec_helper'

describe "When viewing Submit your story page" do 
	before do
		visit new_story_path
	end
	it 'should display site title' do
		page.should have_content("Submit your story")
	end
	it 'should have a form that allows a user to post a story to our stories table and then redirect to root' do
		page.should have_xpath('//form') 
		fill_in 'name', {with: "Zack Dinerstein"}
		fill_in 'email', {with: "zackdhome@gmail.com"}
		fill_in 'title', {with: "Subway Ridin"}
		fill_in 'narative', {with: "blah blhalh ihashdcuh"}
		click_button 'Submit'
		current_path.should == '/'
	end
end



