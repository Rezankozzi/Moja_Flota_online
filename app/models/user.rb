class User < ApplicationRecord
  has_many :services
  has_many :reminders
  has_many :venihles, through: 'services'
end
