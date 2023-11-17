=begin

Herencia es una funcionalibidad de la POO para que una clase hija pueda utilizar / heredar
funcionabilidades de la clase padre e incluso agregar cosas propias de la clase hija

class Figure
  attr_accessor :stroke, :fill
end

class Circle < Figure
  attr_accessor :radius
end

=end

=begin
class Circle
  attr_accessor :stroke, :fill, :radius # contorno, relleno, radio
end

class Square # cuadrado
  attr_accessor :stroke, :fill, :side # contorno, relleno, lado
end

class Triangle
  attr_accessor :stroke, :fill, :base, :height # contorno, relleno, base, altura
end

Haremos una abstraccion y sacaremos los campos repetidos y los pondremos en una clase padre y
que las demas clases heren de esta para no repetir el codigo
=end

=begin
class Figure
  attr_accessor :stroke, :fill
end

class Circle < Figure
  attr_accessor :radius
end

class Square < Figure
  attr_accessor :side
end

class Triangle < Figure
  attr_accessor :base, :height
end

c1 = Circle.new
puts c1.methods # [radius, fill, stroke, etc...]
=end

=begin
radius
radius=
fill
fill=
stroke
stroke=
...

Una clase hija solo puede tener 1 clase padre pero 1 clase padre puede tener muchas clases hijas

Una clase puede ser padre e hija al mismo tiempo

class Figure
  attr_accessor :stroke, :fill
end

class Circle < Figure
  attr_accessor :radius
end

class Cylinder  < Circle
  attr_accessor :length
end
=end

=begin
class Parent
  def initialize
    puts "Initialize del parent"
  end
end

class Child < Parent
end

class GrandChild < Child
end

c1 = Child.new
puts c1

gc = GrandChild.new
puts gc
=end

=begin
class Figure
  attr_accessor :stroke, :fill

  def initialize(stroke, fill)
   @stroke = stroke
   @fill = fill
  end
end

class Circle < Figure
  attr_accessor :radius

  def initialize(radius)
    @radius = radius
  end
end

circle = Circle.new(10)
puts circle.radius # 10
puts circle.stroke # 
puts circle.fill # 

circle = Circle.new(10,2,3)
puts circle.radius
puts circle.stroke
puts circle.fill
=end

=begin
class Figure
  attr_accessor :stroke, :fill

  def initialize(stroke, fill)
   @stroke = stroke
   @fill = fill
  end
end

class Circle < Figure
  attr_accessor :radius

  def initialize(stroke, fill, radius)
    super(stroke, fill)
    @radius = radius
  end
end

c1 = Circle.new("rojo", "azul", 5)
puts c1.inspect
=end
