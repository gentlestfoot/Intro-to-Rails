class Request < ApplicationRecord
  belongs_to :neighbourhood

  validates :service_area, presence: true
  validates :service_request, presence: true
end
