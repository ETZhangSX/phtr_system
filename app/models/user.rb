class User < ApplicationRecord
  before_save { self.email = email.downcase }
  has_many :reports
  validates :name, presence: true, length: { maximum: 25 }
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
