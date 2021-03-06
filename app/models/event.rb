class Event < ApplicationRecord
	validates_presence_of :artist

	has_many :attendees
	belongs_to :category

	has_many :event_groupships
	has_many :groups, :through => :event_groupships
end
