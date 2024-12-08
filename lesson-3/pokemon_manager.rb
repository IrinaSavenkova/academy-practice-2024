

def get_pokemon_count()
  print "Введите количество покемонов: "
  count_pokemon = gets.to_i
  get_pokemon_details(count_pokemon)
end

def get_pokemon_details(count_pokemon)

  pokemons = []

  count_pokemon.times do 
   print "Введите имя покемона: "
   name_pokemon = gets.strip
   print "Введите цвет для покемона с именем #{name_pokemon}: "
   color_pokemon = gets.strip
   pokemons.push({name: name_pokemon, color: color_pokemon})
   
  end
  show_pokemon_array(pokemons)
  
end

def show_pokemon_array(array_pokemon)
    puts array_pokemon
end

get_pokemon_count()