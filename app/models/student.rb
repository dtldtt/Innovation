class Student < ApplicationRecord
  validates :account,presence: true,uniqueness: true
  has_secure_password
end
