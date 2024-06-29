class Location < ApplicationRecord
    has_many :monsters_locations
    has_many :monsters, through: :monsters_locations


end
