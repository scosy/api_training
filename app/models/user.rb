class User < ApplicationRecord
  require 'securerandom'

  has_secure_password

  validates_presence_of :name, :email, :password
  validates :username, presence: true, uniqueness: true
end
