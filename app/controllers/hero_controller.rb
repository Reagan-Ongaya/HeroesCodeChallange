class HeroesController < ApplicationController

    def index
        hero = Hero.all 
        render json: hero,except:[:created_at,:updated_at]
    end 

    def show 
        hero = find_hero
        render json: hero, except:[:created_at,:updated_at]
    end

    def create
        render json: Hero.create!(hero_params)
    end

    def update
        hero = find_hero
        hero.update!(hero_params)
    end

    def destroy
        hero = find_hero
        hero.hero_powers.destroy_all
        hero.destroy
        head :no_content
    end

    private
    def find_hero 
        hero.find_by(id: params[:id])
    end

    def hero_params
        params.permit(:name, :super_name)
    end

end