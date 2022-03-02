class Neighbourhood < ApplicationRecord
  has_many :trees
  has_many :requests
end
