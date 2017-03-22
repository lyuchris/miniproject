class Ad < ApplicationRecord
	has_many :votes, dependent: :destroy
	validates_presence_of :name
	belongs_to :user
end
