# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "net/http"
require "json"

Tree.destroy_all
Request.destroy_all
Neighbourhood.destroy_all

url = "https://data.winnipeg.ca/resource/xaux-29zr.json"
uri = URI(url)
response = Net::HTTP.get(uri)
neighbourhood_data = JSON.parse(response)

neighbourhood_data.each do |neighbourhood|
  Neighbourhood.create(
    name:     neighbourhood["name"],
    polygons: neighbourhood["the_geom"]["coordinates"][0][0]
  )
end

url = "https://data.winnipeg.ca/resource/hfwk-jp4h.json"
uri = URI(url)
response = Net::HTTP.get(uri)
tree_data = JSON.parse(response)

tree_data.each do |tree|
  Tree.create(
    common_name:   tree["common_name"],
    diameter:      tree["diameter_at_breast_height"],
    location:      "#{tree['location']['latitude']},#{tree['location']['longitude']}",
    neighbourhood: Neighbourhood.where("name LIKE \"#{tree['neighbourhood']}\"").first
  )
end

url = "https://data.winnipeg.ca/resource/4her-3th5.json"
uri = URI(url)
response = Net::HTTP.get(uri)
request_data = JSON.parse(response)

request_data.each do |request|
  Request.create(
    date:            DateTime.parse(request["sr_date"]),
    service_area:    request["service_area"],
    service_request: request["service_request"],
    location:        "#{request['location_1']['latitude']},#{request['location_1']['longitude']}",
    neighbourhood:   Neighbourhood.where("name LIKE \"#{request['neighbourhood']}\"").first
  )
end
