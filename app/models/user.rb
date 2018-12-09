class User < ApplicationRecord
  before_save { self.email = email.downcase }
  has_many :reports, dependent: :destroy
  validates :name, presence: true, length: { maximum: 25 }
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }

  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
end