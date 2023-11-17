=begin
class Name
  def initialize(first, middle, last)
    @first = first
    @middle = middle
    @last = last
  end
end

name = Name.new("Sergio", "Montiel", "Castello")
puts name.inspect #<Name:0x0000000146173be8 @first="Sergio", @middle="Montiel", @last="Castello">
=end

=begin

tipos de variables

variable_local = 1
CONSTANTES = 2
@instancia = 3
@@de_clase = 4
$globales = 5

Las variables locales solo viven dentro de su scope
Las variables de instancia cada objeto tendra su valor propio
Las variables de clase, todos los objetos de esa clase compartiran ese valor
Las variables globales pueden ser accedidas desde cualquier punto de mi programa

class Animal
  def comer
    _comida = ""
  end

  def beber
    _comida # esto es un error ya que _comida no existe en este scope - bloque
  end
end

class Animal
  def comer
    @comida = ""
  end

  def beber
    @comida
  end

  def cazar
    @comida
  end
end
=end
=begin
class CoffeMachine
  def initialize
    @water = 100
  end

  def make_coffee
    @water -= 10
  end
end

c1 = CoffeMachine.new
c2 = CoffeMachine.new

puts c1.inspect
puts c2.inspect

3.times do
  c1.make_coffee
end

2.times do
  c2.make_coffee
end

puts c1.inspect
puts c2.inspect
=end

=begin
class Customer
  @@number_customers = 0

  def initialize(id, name, addr)
    # Metodo constuctor que es elprimero que se llama al ser inicializada una clase
    @cust_id = id
    @custo_name = name
    @cust_addr = addr
  end

  def show_info()
    puts "Customer id #{@cust_id}"
    puts "Customer name #{@custo_name}"
    puts "Customer address #{@cust_addr}"
  end

  def total_customers()
    @@number_customers += 1
    puts "total de custombers: #{@@number_customers}"
  end
end

c1 = Customer.new(1, "Sergio", "GT")
c2 = Customer.new(2, "Daniella", "GT")
c3 = Customer.new(3, "Pachis", "GT")

c1.total_customers
c2.total_customers
c3.total_customers

puts c1.inspect
puts c2.inspect
puts c3.inspect
=end