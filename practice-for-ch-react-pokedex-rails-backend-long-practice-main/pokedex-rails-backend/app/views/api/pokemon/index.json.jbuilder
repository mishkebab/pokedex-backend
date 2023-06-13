# [
#   {
#     "id": 1,
#     "number": 1,
#     "name": "Bulbasaur",
#     "imageUrl": "/images/pokemon_snaps/1.svg",
#     "captured": true
#   },
#   // ...
# ]


arr = json.array! @pokemons, :id, :number, :name, :image_url, :captured

arr.each do |pokemon|
    if pokemon["captured"] == false
        pokemon["imageUrl"] = "/images/unknown.png"
    end
end
