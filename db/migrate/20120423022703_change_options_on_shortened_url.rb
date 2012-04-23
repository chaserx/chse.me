class ChangeOptionsOnShortenedUrl < ActiveRecord::Migration
  def change
  	change_column :urls, :shortened, :string, :default => "", :null => false
  end
end
