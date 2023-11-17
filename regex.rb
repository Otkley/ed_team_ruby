=begin
Las expresiones regulares nos ayudan a encontrar coincidencias dentro de una cadena de texto

Match the single word Ruby
/Ruby/

Match Ruby or ruby
/[Rr]uby/

Match an abc at beginning of line
/^abc/

Match an xyz at end of line
%r(xyz$)

Match any sequence of (zero or more) digits
%r|[0-9]*|
=end

=begin
text = "te gustan los gatos?"
puts text =~ /gatos/ # 14 - porque empieza en el caracter 14

puts text.match(/gatos/) # gatos - porque si esta la palabra
puts text.match(/perros/) # 
=end

=begin
def vocales str
  puts str =~ /[aeiou]/
end

vocales "aereo" # 0 - regresa la posicion de la primer vocal que haga match a [a] [0]
vocales "fest" # 1 - e [ae] [1]
=end

=begin
def vocales str
  puts !!(str =~ /[aeiou]/)
end

vocales "aereo" # true
vocales "fest" # true
vocales "fst" # false
=end

=begin
def numeros str
  puts !!(str =~ /[0-9]/)
end

numeros "2021" # true
numeros 2021 # false
numeros "año 2021" # true
=end

=begin
def letras str
  puts !!(str =~ /[a-z]/)
end

letras "abcde" # true
letras "2021" # false
letras "ABCDE" # false

def letras_generales str
  puts !!(str =~ /[a-zA-Z]/)
end

def letras_generales_y_numeros str
  puts !!(str =~ /[0-9a-zA-Z]/)
end

\w = /[0-9a-zA-Z]/)
\d = [0-9]
\s = " ", "\n", " t"

Repeticiones

\d = [0-9]
\d+ o [0-9]+ # 1 o mas numeros
\d* o [0-9]* # 0 o mas numeros
^ # Todo menos lo que yo coloque - ^\d o [^0-9] - validar todo menos los numeros
=end
 
=begin
# {3,5} # rango
def ip_address? ip
  !!(ip =~ /^\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}$/) - ^ al inicio debe haber numeros, $ al final debe haber numeros
end

puts ip_address? "192.168.1.0" # true
puts ip_address? "192.168.1" # false
=end