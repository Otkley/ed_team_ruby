=begin
Procs y Lambdas son maneras de definir un bloque

my_lambda = -> { puts "Hola Lambda"}
my_lambda.call # <Proc:0x000000010e072fb0

my_proc = Proc.new { |x| puts x } # Hola Lambda

Definimos un lambda de esta primera forma
=end
var = -> do
  puts "Hola desde un bloque"
end
# Los procs y los lambdas asi como las funciones deben ser llamadas para ejecutarse
var.call

var = lambda do
  puts "Hola bloque"
end

var.call

puts var.class # Proc - aunque los lambda son un tipo diferente de un Proc

var = lambda {
  puts "Hola sin do-end"
}

var.call

# Llamada a un lambda
var = lambda do
  puts "llamada"
end

var.call
var.()
var.[]
var.===

=begin
# Lambdas con parametro

Si se declara una variable en un metodo, no importa si es o no usada, pero si declaramos una
variable dentro de un lambda, debe ser utilizada si o si.

var = lambda { |param|
  puts "Sin usar variable"
}

var.call # Error

var = lambda { |param|
  puts "Usando variable #{param}"
}

var.call("Ejemplo") # Usando variable Ejemplo

#parametros por default

var = lambda {
  |name = "Sergio"|
  puts "Hola #{name}"
}

var.call

var = lambda do |name = "Sergio"|
  puts "Hola #{name}"
end

var.call("Pachi") # Hola Pachi
=end

=begin
# definir un Proc

Se diferencia un Proc de un lambda porque si existe una clase Proc, por lo que podemos instanciarla
Es un tipo o una manera de hacer un bloque igual que lambda

_proc = Proc.new { |x| puts x }
_proc.call(5) # 5

Un Proc si puede ser intanciado ya que lambda es un tipo de proc

Cuando no mandamos un parametro y si lo usamos, lambda truena pero Proc no truena pero no hace nada
=end

=begin
# return

Cuando tenemos un return dentro de un Proc o de un Lambda

def proc_math
  Proc.new { return 1 + 1 }.call

  return 2 + 2
end

proc_math # 2

Retorna el 2 y no el 4 porque el Proc al encontrar un return, lo ejecuta y termina.

def lambda_math
  lambda { return 1 + 1 }.call

  return 2 + 2
end

lambda_math # 4

Retorna el 4 y no el 2 porque el Lambda encuentra el return y regresa su codigo pero no lo regresa
hasta que termina todo el codigo que tiene y al final retorna lo ultimo que encuentra
=end


