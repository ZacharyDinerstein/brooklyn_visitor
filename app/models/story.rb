class Story < ActiveRecord::Base
  attr_accessible :email, :name, :narrative, :title, :story_image, :borough, :zipcode
end
