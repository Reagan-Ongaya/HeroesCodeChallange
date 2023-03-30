class Power < ApplicationRecord
    has_many :hero_powers, dependent: :destroy
    has_many :heros, through: :hero_powers

    validates :name, presence: true
    validates :description, numericality: { least_characters: 20 }
end
