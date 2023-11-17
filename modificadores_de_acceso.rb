=begin

class Name
  def initialize(first, middle, last)
    @first = first
    @middle = middle
    @last = last
  end
  
  attr_accessor :first, :middle, :last

  def saludar
  end

  private

  def address
  end
end

# Como tal lo que hacemos con los modificadores de acceso es para "modificar" el alcance de
algunos metodos por parte de clases y objetos externos.
=end

=begin
class Person
  def speak # todos los metodos son publicos a menos que lo modifiquemos
    puts "hola"
  end

  def whisper_public
    whisper
  end

  private

  def whisper # para acceder a un metodo privado, debemos hacerlo por medio de un metodo publico
    puts "Hola en susuro"
  end
end

you = Person.new
you.speak

you.whisper_public
=end

=begin
class Car
  def call_speed
    speed
  end

  protected

  def speed
    puts "Velocidad de un #{self.class}"
  end
end

class BMW < Car
  def call_bmw_speed
    speed
  end
end

puts Car.new.call_speed

puts BMW.new.call_bmw_speed
=end

class Car
  def call_speed
    BMW.new.speed
  end

  protected

  def speed
    puts "Velocidad de un #{self.class}"
  end
end

class BMW < Car
end

=begin
Los metodos protected se comportan como metodos privados cuando son llamados desde fuera del
contexto de la clase donde fue definido su metodo.

puts BMW.new.speed # error - ya que mando a llamar al metodo speed desde fuera del contexto
de la clase carro osea que se comportara como metodo privado

Pero si llamo al metodo desde dentro donde fue declarado el metodo protegido, su comportamiento
sera como metodo publico
=end
puts Car.new.call_speed