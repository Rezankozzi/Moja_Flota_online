class Venihle < ApplicationRecord
  has_many :services
  has_many :mechanics, class_name: 'User', through: 'services'
  has_one :insurance_policy
end
