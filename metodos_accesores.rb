=begin

class Name
  def initialize(first, middle, last)
    @first = first
    @middle = middle
    @last = last
  end

  attr_accessor :first, :middle, :last
end

name = Name.new("Sergio", "Montiel", "Castello")
puts name.inspect

Metodos accesores se conocen como getters y setters.
Con el metodo getter podemos leer el contenido de esas variables
Con el metodo setter podemos cambiar el contenido de esas variables
=end

=begin
class Food
  def initialize(protein)
    @protein = protein
  end

  # metodo getter
  def protein
    @protein
  end

  # metodo setter
  def protein=(protein)
    @protein = protein
  end
end

bacon = Food.new(21)
puts bacon.protein
puts bacon.protein = 25
=end

=begin
class Food
  attr_reader :protein
  attr_writer :protein

  # attr_accessor :protein
  def initialize(protein)
    @protein = protein
  end
end

bacon = Food.new(21)
puts bacon.protein
puts bacon.protein = 25
=end

