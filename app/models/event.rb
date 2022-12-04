# frozen_string_literal: true

class Event < ApplicationRecord
  validates :start_time, presence: true, comparison: { greater_than: Time.now }
  validates :duration, presence: true, numericality: { greater_than: 0 }, divisible_by_five: true
  validates :title, prasence: true, length: { in: 5..140 }
  validates :description, presence: true, length: { in: 20..1000 }
  validates :price, presence: true, numericality: { in: 1..1000 }
  validates :location, presence: true
  has many :attendances
  has_many :participants, class_name: 'User', through: :attendances
  belongs_to :administrator, class_name: 'User'
end
