class Event < ApplicationRecord
	validates_presence_of :artist

	has_many :attendees
end
