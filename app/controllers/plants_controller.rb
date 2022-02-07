class PlantsController < ApplicationController



    def index 
        plants = Plant.all 
        render json: plants
    end

    def show
        plant = Plant.find(params[:id])
        if bird 
            render json: bird
            else render json:{ error: "Bird not found" }, status: :not_found
            end
            
    end

    def create
       new_plant =  Plant.create(plant_params)
       render json:new_plant
        
    end

    private

    def plant_params
        params.permit(:name, :image, :price)
        
    end
    
    
    
    
end
