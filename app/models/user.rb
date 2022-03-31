class User < ApplicationRecord
  before_save { self.username = username.downcase }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 25 },
                       format: { with: VALID_EMAIL_REGEX }
end
