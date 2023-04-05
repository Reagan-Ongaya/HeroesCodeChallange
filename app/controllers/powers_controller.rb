class PowersController < ApplicationController
rescue_from ActiveRecord::RecordNotFound,with: :unfound_response 
rescue_from ActiveRecord::RecordInvalid, with: :invalid_record

    #GET powers
    def index
        render json: Power.all,status: :ok
    end
    #GET powers
    def show
        power = Power.find(params[:id])
        render json: power,status: :ok
    end
   #UPDATE /powers
    def update
        power = Power.find_by(id: params[:id])
        power.update!(power_params)
        render json: power,status: :accepted
    end
    
    private
    
    #error on no response
    def unfound_response
        render json: {error: "Power not found"},status: :not_found
    end

    #record validation
    def invalid_record
        render json:{errors: ["validation errors"]},status: :unprocessable_entity
    end

    #power params
    def power_params
        params.permit(:description)
    end
end