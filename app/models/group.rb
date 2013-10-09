class Group < ActiveRecord::Base
  attr_accessible :user_id, :name

  belongs_to(
  :user,
  :class_name => "User",
  :foreign_key => :user_id,
  :primary_key => :id
  )

  has_many :contact_group_joins

  has_many(
  :contacts,
    through: :contact_group_joins
  )
end
