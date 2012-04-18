class AddUrlIndexes < ActiveRecord::Migration
  def change
  	add_index :urls, :shortened
  	add_index :urls, :link
  end
end
