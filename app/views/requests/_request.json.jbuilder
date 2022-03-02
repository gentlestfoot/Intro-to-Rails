json.extract! request, :id, :service_area, :service_request, :location, :created_at, :updated_at
json.url request_url(request, format: :json)
