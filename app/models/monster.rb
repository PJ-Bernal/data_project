class Monster < ApplicationRecord

    has_many :monsters_locations
    has_many :locations, through: :monsters_locations

    has_many :monsters_ailments
    has_many :ailments, through: :monsters_ailments



end
