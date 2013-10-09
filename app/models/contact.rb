class Contact < ActiveRecord::Base
  attr_accessible :name, :email, :user_id, :favorited
  validates :user_id, presence: true

  belongs_to(
  :user,
  :class_name => "User",
  :foreign_key => :user_id,
  :primary_key => :id
  )

  has_many(
  :contact_shares,
  :class_name => "ContactShare",
  :foreign_key => :contact_id,
  :primary_key => :id
  )

  has_many :contact_group_joins

  has_many(
  :groups,
    through: :contact_group_joins
  )
end
