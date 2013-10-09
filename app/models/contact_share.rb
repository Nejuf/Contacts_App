class ContactShare < ActiveRecord::Base
  attr_accessible :contact_id, :sharing_user_id, :receiving_user_id, :favorited
  validates :receiving_user_id, presence: true
  validates :contact_id, presence: true

  belongs_to(
  :contact,
  :class_name => "Contact",
  :foreign_key => :contact_id,
  :primary_key => :id
  )

  belongs_to(
  :user,
  :class_name => "User",
  :foreign_key => :receiving_user_id,
  :primary_key => :id
  )


end
