class ChangeNarativeDataTypeInStories < ActiveRecord::Migration
  def up
		remove_column :stories, :narative
		add_column :stories, :narrative, :text
  end

  def down
  		remove_column :stories, :narrative
  		add_column :stories, :narative, :string
  end
end
