class Power < ApplicationRecord
    has_many :hero_powers, dependent: :destrpy
    has_many :heros, through: :hero_powers

    validate :name, presence: true
    validates :description, numericality: { least_characters: 20 }
end
