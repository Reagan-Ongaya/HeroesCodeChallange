class Heropowers < ApplicationRecord
    belongs_to :hero
    belongs_to :power

    validates :strength  : { :'strong', :'weak', :'avarage' }
end