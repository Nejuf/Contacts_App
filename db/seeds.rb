# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
u1 = User.create(user_name: 'Phil777')
u2 = User.create(user_name: 'Eliwood')
u3 = User.create(user_name: 'Arthur')


cs1 = ContactShare.create(sharing_user_id: 1, contact_id: 1, receiving_user_id: 2)
cs2 = ContactShare.create(sharing_user_id: 1, contact_id: 2, receiving_user_id: 3)
cs3 = ContactShare.create(sharing_user_id: 2, contact_id: 3, receiving_user_id: 3)