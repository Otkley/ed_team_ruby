class Factorial

=begin
En este metodo haremos un rango del 1 al valor de number, y entre cada uno de estos numeros del rango, inyectaremos el simbolo
* esto hara que entre cada numero se haga una multiplicación y asi conseguir el factorial de number
=end
  def factorial_of number
    (1..number).inject(:*)
  end
end