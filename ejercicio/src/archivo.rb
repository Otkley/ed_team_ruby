=begin

read
"r" solamente lectura desde el inicio del archivo
"r+" lectura y escritura desde el inicio del archivo

write
"w" solamente escritura. Sobreescribiendo completamente el archivo, o creando nuevo si no existe
"w+" lectura y escritura. Sobreescribiendo completamente el archivo, o creando nuevo si no existe


"a" solamente escritura, comenzando en el final del archivo si ya existe, sino se crea uno nuevo
"a+" lecutra y escritura, comenzando en el final del archivo si ya existe, sino se crea uno nuevo

File es una clase que ruby ya tiene pre definida para el manejo de archivos

Abrimos el archivo con el metodo open de la clase File y le pasamos la ruta del archivo con la opcion como
argumento de lo que queramos hacer en el archivo
=end

=begin
.Lectura

De estas maneras leo todo el archivo de golpe

file = File.open("./src/lectura.txt", "r")

puts file # Instancia de File

puts file.read # Al abrir este archivo, debo cerrarlo siempre

puts file.close

file = File.read("./src/lectura.txt") # Si leemos el archivo de esta manera, se cierra en automatico

 De la siguiente forma con bloque leemos el archivo linea por linea y asi podemos manipular las lineas

 De esta manera lo que hacemos es abrir el archivo pasandole la ruta y la opcion de que leeremos el archivo
 la f pasa a ser la variable iteradora por lo que tendra en su valor cada linea del archivo mientras vaya iterando

File.open("./src/lectura.txt", "r") do |f|
  while line = f.gets # Siempre que f.gets tenga un valor y lo guarde en line, se ejecuta el contenido del while
    puts line
    puts line.upcase
    puts line.downcase
  end
end

.Escritura

Con el siguiente codigo, se creara el archivo escritura.txt ya que no existía antes con el valor de: 
2023-11-17 13:34:13 -0600 user logged in

File.open("./src/escritura.txt", "w") do |f|
  f.write "#{Time.now} user logged in"
end

File.write("./src/escritura.txt", "usuario inicio sesion", mode: "a")
File.write("./src/escritura.txt", "\nusuario inicio sesion", mode: "a")
=end

puts File.exists?("./src/escritura.txt")
puts File.exists?("escritura.txt")

puts File.directory?("./src/escritura.txt")

File.rename("./src/escritura.txt", "./src/tura.txt") # Si corremos esto en irb retorna un 0 de que todo se hizo bien
File.rename("./src/tura.txt", "./src/escritura.txt")
