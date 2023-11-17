require './src/factorial.rb' # requerimos el archivo al cual le haremos las pruebas

RSpec.describe Factorial do # coloco la clase a la cual le hare la prueba y abro un bloque
  describe "#factorial_of" do # coloco al metodo al cual yo quiero hacerle la prueba
    it "devolver un 120" do # coloco lo que yo espero recibir al probar el metodo
      expect(Factorial.new.factorial_of(5)).to eq(120) # espero que al inicializar el factorial y ejecutar ese metodo con el argumento 5, el resultado sea igual a 120
    end
  end
end
