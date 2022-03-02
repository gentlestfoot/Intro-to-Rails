class Neighbourhood < ApplicationRecord
  has_many :trees
  has_many :requests

  validates :name, presence: true
  validates :polygons, presence: true
end
