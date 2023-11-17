=begin
buscadores = %w(Google Yahoo MS) # ["Google", "Yahoo", "MS"]

motores_de_bosqueda = buscadores.map do |buscador|
  puts "http//www." + buscador.downcase + ".com"
end

http//www.google.com
http//www.yahoo.com
http//www.ms.com

El metodo map recibe un bloque como argumento y lo que pasaba a ser el argumento ahora sera
nuestra variable iteradora.
=end

=begin

# bloque con pipes
5.times do |time|
  puts "hola #{time}"
end

Empezamos desde el numero 0

# recorrido array
numbers = [1, 3, 5, 7]

numbers.each do |number|
  puts number * number
end

1
9
25
49

# recorrido hash
hash = {:lampara => 50, :foco => 15}

hash.each do |key,value|
  puts "El precio de #{key} es de: #{value}"
end

# each_with_index
animals = %w(cat dog tiger cow)

animals.each_with_index do |animal, index|
  puts "#{index}.- #{animal}"
end

# ciclo while
n = 0

while n < 10
  puts n
  n += 1
end

# ciclo until
cont = 7

until cont == 11
  puts cont * 10
  cont += 1
end

# ciclo loop / do ... while
cont = 0

loop do
  puts "Hola mundo"

  cont += 1
  break if cont == 5
end

# ciclo for
En ruby no existe como tal el ciclo for

animals = %w(cat dog tiger cow)

for animal in animals do
  puts "#{animal.length}"
  puts "#{animal.capitalize}"
  puts "#{animal.reverse}"
end
=end