class Power < ApplicationRecord
    #relations of power to hero 
    has_many :hero_powers, dependent: :destroy
    has_many :heros, through: :hero_powers
    
    #validation
    validates :name, presence: true
    validates :description, presence: true, length: { minimum: 20}
end
