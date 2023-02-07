class Service < ApplicationRecord
  belongs_to :venihle
  belongs_to :mechanic, class_name: 'User'
end
