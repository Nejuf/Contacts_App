class User < ActiveRecord::Base
  attr_accessible :user_name
  validates :user_name, uniqueness: true
  validates :user_name, presence: true

  has_many(
  :contact_shares,
  :class_name => "ContactShare",
  :foreign_key => :user_id,
  :primary_key => :id
  )

  has_many(
  :contacts,
  :through => :contact_shares,
  :source => :contact
  )

  has_many :groups
end
