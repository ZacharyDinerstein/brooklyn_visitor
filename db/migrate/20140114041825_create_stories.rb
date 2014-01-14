class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :name
      t.string :email
      t.string :title
      t.string :narative

      t.timestamps
    end
  end
end
