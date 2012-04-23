class ChangeLinkFromStringToText < ActiveRecord::Migration
  def change
  	change_column :urls, :link, :text, :default => ""
  	add_column :urls, :title, :string, :default => ""
  end
end
