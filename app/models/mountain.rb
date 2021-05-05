class Mountain < ApplicationRecord
  belongs_to :mountain_range
  has_many :climbing_routes
end
