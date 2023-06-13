class Api::PokemonController < ApplicationController
    def types
        render json: [
            "fire",
            "electric",
            "normal",
            "ghost",
            "psychic",
            "water",
            "bug",
            "dragon",
            "grass",
            "fighting",
            "ice",
            "flying",
            "poison",
            "ground",
            "rock",
            "steel"
          ]
    end 

    def index
        @pokemons = Pokemon.all
        render :index
    end

    # def show
    #     @pokemon = Pokemon.find(params[:id])
    #     # if (@pokemon === undefined)
    #     #     @pokemon.errors.full_messages
    #     render :show
    # end 
end
