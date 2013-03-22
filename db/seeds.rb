# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Spree::Core::Engine.load_seed if defined?(Spree::Core)
#Spree::Auth::Engine.load_seed if defined?(Spree::Auth)
admin = Spree::User.new({:password => 'lorenzo',
                         :password_confirmation => 'lorenzo',
                         :email => 'lorenzo.dagostini@gmail.com',
                         :login => 'lorenzo.dagostini@gmail.com'})
if admin.save
  role = Spree::Role.find_or_create_by_name 'admin'
  admin.spree_roles << role
  admin.save
end
