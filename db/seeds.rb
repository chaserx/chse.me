# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if User.count < 1
	puts "seeding users"
	User.create( 
	  :email                		=> 'chase.southard@gmail.com', 
	  :password   					=> '5up3r_53cr3t',
	  :password_confirmation        => '5up3r_53cr3t'
	) 

	User.first.update_attribute(:admin, true)

else
	puts "already seeded"
end