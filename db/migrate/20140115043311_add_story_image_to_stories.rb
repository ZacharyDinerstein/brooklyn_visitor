class AddStoryImageToStories < ActiveRecord::Migration
  def change
    add_column :stories, :story_image, :string
  end
end
