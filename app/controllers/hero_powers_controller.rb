class HeroPowersController < ApplicationController

    def index
        heropowers = HeroPowers.all
        render json: heropowers, except: [:created_at,:updated_at]
    end

        def create
        heropowers = Heropowers.create!(heropowers_params)
        render json: heropowers, status: :created
        
    end
    def show
        heropower = find_heropowers
        render json: heropowers

    end
    def update
    
      hero = find_heropowers
      hero.update!(heropowers_params)
  
     end 

   private
  
    def find_heropower
        Heropower.find_by(id: params[:id])
    end
  
    def heropowers_params
      params.permit(:strength, :hero_id, :power_id)
    end
end