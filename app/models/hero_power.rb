class HeroPower < ApplicationRecord
    #relationship of Heropower to hero and power
    belongs_to :hero
    belongs_to :power
    
    #validations for HeroPower 
    validates :strength, inclusion: { in: %w(Strong Weak Average) }
end
