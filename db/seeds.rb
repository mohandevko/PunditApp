# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#creating admin user
  admin = User.new(:email => "admin@gmail.com", :password => "admin123", :role => "admin")
  admin.save!(:validate => false)

  city_admin = User.new(:email => "cityadmin@gmail.com", :password => "cityadmin123", :role => "city_admin")
  city_admin.save(:validate => false)

  agent = User.new(:email => "agent@gmail.com", :password => "agent123", :role => "agent")
  agent.save(:validate => false)
