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


cs1 = ContactShare.create(sharing_user_id: 1, contact_id: 1, receiving_user_id: 2, favorited: true)
cs2 = ContactShare.create(sharing_user_id: 1, contact_id: 2, receiving_user_id: 3, favorited: true)
cs3 = ContactShare.create(sharing_user_id: 2, contact_id: 3, receiving_user_id: 3)

c1 = Contact.create(name: "Florina", email: "1@gmail.com", user_id: 1, favorited: true)
c2 = Contact.create(name: "Lynn", email: "2@gmail.com", user_id: 1, favorited: true)
c3 = Contact.create(name: "Hector", email: "3@gmail.com", user_id: 2, favorited: true)
c4 = Contact.create(name: "Saul", email: "4@gmail.com", user_id: 3, favorited: true)
c5 = Contact.create(name: "Sarah", email: "5@gmail.com", user_id: 3, favorited: false)

g1 = Group.create(user_id: 1, name: "BFFs")
g2 = Group.create(user_id: 1, name: "Family")
g3 = Group.create(user_id: 3, name: "Family")
g4 = Group.create(user_id: 1, name: "Colleagues")
g5 = Group.create(user_id: 2, name: "Friends")

j1 = ContactGroupJoin.create(contact_id: 1, group_id: 1)
j2 = ContactGroupJoin.create(contact_id: 2, group_id: 1)
j3 = ContactGroupJoin.create(contact_id: 3, group_id: 1)
j4 = ContactGroupJoin.create(contact_id: 4, group_id: 1)
j5 = ContactGroupJoin.create(contact_id: 1, group_id: 2)
j6 = ContactGroupJoin.create(contact_id: 3, group_id: 2)
j7 = ContactGroupJoin.create(contact_id: 3, group_id: 3)
j8 = ContactGroupJoin.create(contact_id: 1, group_id: 4)
j9 = ContactGroupJoin.create(contact_id: 2, group_id: 5)
j10 = ContactGroupJoin.create(contact_id: 4, group_id: 5)