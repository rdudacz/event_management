class Event < ApplicationRecord
  belongs_to :user
  has_many :attendances, dependent: :delete_all

  validates :name, presence: true
  validates :description, presence: true
  validates :date, presence: true
  validates :location, presence: true
  validates :user_id, presence: true
end
