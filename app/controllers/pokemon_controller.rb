class PokemonController < ApplicationController
  def show

    res = Typhoeus.get("http://pokeapi.co/api/v2/pokemon/pikachu/", followlocation: true)
    body = JSON.parse(res.body)

    render json: {
      name: body["name"],
      id: body["id"],
      types: body ["types"]
      # body["id"]
      # body["types"]
    }



 # should be "pikachu"
    # body ["id"]
    # body ["types"]
  end
end
