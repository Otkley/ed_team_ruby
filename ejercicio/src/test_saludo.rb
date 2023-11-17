require './src/saludo.rb'
require 'minitest/autorun'

class TestSaludo < Minitest::Test
  def setup # este metodo lo utilizo para setear variables de instancia que utilizaremos en nuestras pruebas
    @saludo = Saludo.new
  end

  def test_puedo_saludar? # los metodos a probar tienen que empezar con el nombre test_
    assert_equal "hola mundo!", @saludo.saludar
  end

  def test_saludar_skip
    skip "pruébame luego" # con la palabra skip digo que todo lo que vaya despues, no la ejecutara
  end
end