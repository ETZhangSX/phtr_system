class Report < ApplicationRecord
  belongs_to :user
  validates :address, presence: true
  validates :size, presence: true
  validates :location, presence: true
  ADDRESS = ['Lincoln Street', 'Berklin Street', 'Beijing Road', 'Guangzhou Road']
end
