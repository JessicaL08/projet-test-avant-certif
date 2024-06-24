class Client < ApplicationRecord
  has_many :reservations
  has_many :appartements, through: :reservations
end
