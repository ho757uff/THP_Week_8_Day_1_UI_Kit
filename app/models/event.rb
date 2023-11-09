class Event < ApplicationRecord
  belongs_to :organizer, class_name: 'User', foreign_key: 'organizer_id'
  has_many :attendances, dependent: :destroy
  has_many :attendees, through: :attendances, source: :user
end