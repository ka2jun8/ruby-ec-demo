class User < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :password, presence: true, length: { minimum: 6 }
  # VALID_EMAIL_REGEX = /\A[\w+-.]+@[a-z\d-.]+.[a-z]+\z/i
  # validates :mail, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }

end

