class PowersController < ApplicationController
      
    def index
        power = Power.all
        render json: power, except:[:created_at,:updated_at]
    end
    def show
        power = find_power.as_json(include: { hero: { only: [:id, :name, :super_name] } }, except: [:created_at,:updated_at])
        render json: power
    end
    def create
      render json: Power.create!(power_params)
    end
   def update
    
    power = find_power
    power.update!(power_params)

   end 
    
    def destroy
        power = find_power
        power.power_hero.destroy_all
        power.destroy
        head :no_content
    end

    private
    def find_power
       Power.find_by(id: params[:id])
     end
     def power_params
      params.permit(:name, :description)
    end
end