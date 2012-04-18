class AddHttpStatusToUrls < ActiveRecord::Migration
  def change
  	add_column :urls, :http_status, :integer, :default => 301
  end
end
