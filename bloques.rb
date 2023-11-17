=begin
Los bloques pueden ser nombrados como funciones anonimas, como en JavaScript es comun

Todo lo que estara dentro de las palabras reservadas do y end.
Puede recibir o no, una variable iteradora que estara dentro de los ||

buscadores = %w(Google Yahoo MS)
motores_de_bosqueda = buscadores.map do |buscador|
  puts "http//www." + buscador.downcase + ".com"
end
=end

=begin
# times
5.times do
  puts "mensaje desde un bloque"
end

Aqui podemos ver que times es una funcion del objeto 5 y que recibe otra funcion, que esta es
el do y el end, por lo que la funcion times, tambien ejecuta lo que este dentro del bloque.

Osea que el metodo times espera un parametro y le pasamos un bloque (como funcion anonima)

Podemos pasarle una variable al bloque y utilizarla, este tomara el valor de lo que se este
iterando en ese momento.

5.times do |variable|
  puts "mensaje numero: #{variable + 1 } desde un bloque"
end
=end

=begin
#yield

Siempre espera recibir como parametro un bloque

def imprimir_mensaje
  yield
end

imprimir_mensaje do 
  puts "Mensaje desde yield!"
end

yield lo que hace es ejecutar un bloque

def numbers
  yield 1 # Al llamarse yield el 1 pasa a ser el parametro del bloque se se paso al metodo
  yield 2 # Ahora el valor del parametro number es 2
  yield 3 # Ahora es 3
end

numbers do |number|
  puts number * 10
end

# 10 - 20 - 30
=end



