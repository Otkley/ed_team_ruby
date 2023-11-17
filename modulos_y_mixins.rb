=begin

module Dancer
  def dance
  end
end

class Human
  include Dancer
end

Mixins son una funcionabilidad o propiedad de los Modules
Y los Modules son un conjunto de propiedades o acciones encerradas dentro
  de un mismo elemento, como una clase pero sin poder ser instanciado.

No podemos heredar modulos, solo podemos incluirlos

Los modulos nos sirven para encapsular o declarar un namespace

Un namespace

armando       andrea
123           123
empresa 1     empresa 2

La empresa sería en este caso el namespace o el contexto para diferenciar
ambos objetos que aunque tengan su codigo igual, sera diferente por el namespace

Para declarar un module:

module Greeting
  def hello
    puts "Hola señor"
  end
end
=end

=begin
Modules como Namespace

module Bank
  class Customer
    attr_accessor :balance, :first_name, :last_name

    def put_cash(sum)
      puts "#{sum} depósito"
    end
  end
end

module Shop
  class Customer
    attr_accessor :products

    def pay_for_products
      products.each do |product|
        puts "#{product} comprado"
      end
    end
  end
end

# Para acceder a las clases dentro de modulos, se hace con el namespace de la siguiente forma:
bank_c = Bank::Customer.new
bank_c.first_name = "Sergio"
bank_c.last_name = "Montiel"
bank_c.put_cash "500"

shop_c = Shop::Customer.new
shop_c.products = %w(manzana pera cebolla)
shop_c.pay_for_products

Modules como mixins
=end

module Video
  def play
    puts "playing"
  end

  def pause
    puts "video on pause"
  end
end

module Download
  def download_video
    puts "downloading only video"
  end

  def download_audio
    puts "downloading only audio"
  end

  def download_both
    puts "downloading video and audio"
  end
end

class Film
  attr_accessor :title
  
  include Video
  include Download
end

film = Film.new
film.title = "Titulo con modulos"

film.play
film.pause
film.download_video
film.download_audio
film.download_both

=begin
Ruby no permite la herencia multiple, pero si podemos ayudarnos con los includes de los modulos
=end