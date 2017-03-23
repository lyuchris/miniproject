class Group < ApplicationRecord
    belongs_to :user
    validates :name, presence: true
   
	has_many :event_groupships
	has_many :events, :through => :event_groupships
end
