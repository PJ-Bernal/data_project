# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'net/http'
require 'json'

def fetch_data(endpoint)
  url = URI.parse("https://mhw-db.com/#{endpoint}")
  response = Net::HTTP.get_response(url)
  JSON.parse(response.body)
end

# Fetch and create monsters
monsters_data = fetch_data('monsters')
monsters_data.each do |monster|
  Monster.create(
    name: monster['name'],
    size: monster['type'],
    species: monster['species'],
    description: monster['description']
  )
end

# Fetch and create locations
locations_data = fetch_data('locations')
locations_data.each do |location|
  Location.create(
    name: location['name'],
    zoneCount: location['zoneCount']
  )
end

# Fetch and create ailments
ailments_data = fetch_data('ailments')
ailments_data.each do |ailment|
  Ailment.create(
    name: ailment['name'],
    description: ailment['description']
  )
end