class AddBoroughAndZipcodeToStories < ActiveRecord::Migration
  def change
    add_column :stories, :borough, :integer
    add_column :stories, :zipcode, :integer
  end
end
