class Hero < ApplicationRecord
    has_many :hero_powers, dependent: :destroy

    has_many :powers, through: :hero_powers
    validate :name, precence: true
    validate :super_name, precence: true
end