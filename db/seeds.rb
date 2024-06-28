require 'httparty'

# Fetch data from APIs
monsters_response = HTTParty.get('https://mhw-db.com/monsters')
locations_response = HTTParty.get('https://mhw-db.com/locations')

monsters_data = JSON.parse(monsters_response.body)
locations_data = JSON.parse(locations_response.body)

# Clear existing data
MonstersLocation.delete_all
Monster.delete_all
Location.delete_all


# Populate locations table
locations_data.each do |location_data|
  Location.create!(
    id: location_data['id'],
    name: location_data['name'],
    zoneCount: location_data['zoneCount']
  )
end

# Populate monsters table and monsters_locations join table
monsters_data.each do |monster_data|
    Monster.create!(
      id: monster_data['id'],
      name: monster_data['name'],
      size: monster_data['type'],
      species: monster_data['species'],
      description: monster_data['description'],
    )
end
  
  # Populate monsters_locations join table
monsters_data.each do |monster_data|
  monster = Monster.find(monster_data['id'])
  
  monster_data['locations'].each do |location_data|
    MonstersLocation.create!(
      monster_id: monster['id'],
      location_id: location_data['id'],
      )
  end
end
  

puts "Database successfully seeded!"
