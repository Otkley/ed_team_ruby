=begin

begin
  '1' + 1
rescue
  solventar_el_error()
end

Una excepcion es algo que sucede fuera del flujo que no estuvo contemplado pero como quiera
puede suceder y debemos prepararnos para si sucede algo inesperado, poder controlarlo.

En ruby existe una clase exception y de esta heredan todos los tipos de exceptiones que existen

Ej: TypeError (no implicit conversion of Integer into String)
TypeError < Exception

Y como nosotros las tratamos o controlamos??
=end

begin
  '1' + 1
rescue # StandarError is implied in a bare rescue
  puts "hubo un error"
end

=begin
  Declaramos un begin y todo lo que este dentro se intentara ejecutar, si se ejecuta correctamente
  no se ejecutara lo que este en el apartado rescue, si begin falla, entonces rescue se ejecuta.

  Es como el if else, el begin es el if y si falla se ejecuta el rescue osea el else.
=end

begin
  '1' + 1
rescue => e # e es el error que se genero al fallar begin!!
  puts e.class
  puts e.message
end

# Y estos errores podemos guardarlos en un archivo o clase de logs!

# Error especifico
begin
  '1' + 1
rescue TypeError => e # solo voy a capturar el error si se genero un TypeError
  puts e.class
  puts e.message
end

# Exception que yo estoy levantando con la palabra raise

begin
  raise "este es un error propio" # con raise puedo lanzar mis propias exceptions
rescue => e
  puts e.class
  puts e.message
end

begin
  numero.even?
rescue NameError => e # NameError
  puts e.class
  puts e.message
end

=begin
Las excepciones (begin - rescue) o ( try - catch ) nos ayudan a manejar mejores los errores, esos errores que pasen en tiempo real,
son guardados y asi podemos verlos y trabajar en arreglarlos
=end

begin
  numero.even?
rescue NameError => e
  puts (e.message).to_s
  puts "Error en el servidor, el dia: " + (Time.now).to_s
end