class Report < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc)}
  validates :user_id, presence: true
  validates :address, presence: true
  validates :size, presence: true
  validates :location, presence: true
  validates :district, presence: true
  ADDRESS = ['Lincoln Street', 'Berklin Street', 'Beijing Road', 'Guangzhou Road']
end
