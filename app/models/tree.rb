class Tree < ApplicationRecord
  belongs_to :neighbourhood

  validates :common_name, presence: true
  validates :diameter, presence: true
end
