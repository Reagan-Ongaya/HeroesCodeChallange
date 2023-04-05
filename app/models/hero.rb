class Hero < ApplicationRecord

    #relations of hero to power
    has_many :hero_powers, dependent: :destroy
    has_many :powers, through: :hero_powers
    
    #validations
    validates :name, presence: true
    validates :supername, presence: true
end