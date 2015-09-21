class Tournament < ActiveRecord::Base
	has_many :players, through: :registrations
	has_many :registrations
	validates :name, presence: true
end
