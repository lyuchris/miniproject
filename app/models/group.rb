class Group < ApplicationRecord
  belongs_to :user
  has_many :posts
  validates :name, presence: true
   
	has_many :event_groupships
	has_many :events, :through => :event_groupships

	has_many :group_relationships
  has_many :members, through: :group_relationships, source: :user
end
