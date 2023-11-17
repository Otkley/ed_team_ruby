require 'byebug'

class Animal
  def initialize
    @animals = []
  end

  def create_animals animal
    @animals.append(animal)
  end

  def show_animals
    @animals
  end

  def search_animal _animal
    _animals = @animals.find do |animal| # Si no existe el animal el metodo find retorna un nil
      animal == _animal
    end

    _animals
  end
end

domesticos = Animal.new
domesticos.create_animals "gato"
domesticos.create_animals "perro"
domesticos.create_animals "caballo"

puts domesticos.show_animals

_animal = domesticos.search_animal "caballo"
puts _animal.upcase

=begin
byebug
_animal = domesticos.search_animal "conejo"
byebug
puts _animal.upcase # No podemos hacer un upcase de un valor nil
=end

=begin
La linea que este señalada es la linea que esta a punto de ejecutarse pero que no se ha ejecutado

   35: byebug
=> 36: _animal = domesticos.search_animal "conejo"
   37: byebug

Con la letra n puedo pasar a ejecutar la siguiente linea:

   35: byebug
   36: _animal = domesticos.search_animal "conejo"
=> 37: byebug

Como el metodo que se rompe es el upcase, ahi es donde se coloca el rescue, no en el find
=end

_animal = domesticos.search_animal "conejo"

begin
  puts _animal.upcase
rescue => e
  puts "Salio un error :("
  puts e.class
  puts e.message
end
