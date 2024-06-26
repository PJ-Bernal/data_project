class Ailment < ApplicationRecord
    has_many :monsters_ailments
    has_many :monsters, through: :monsters_ailments
end
