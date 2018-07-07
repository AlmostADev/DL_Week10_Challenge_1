# Transformar la clase Herviboro en un módulo. Implementar el módulo en la clase Conejo mediante
# Mixin para poder acceder al método dieta desde la instancia. Finalmente imprimir la definición
# de Hervíboro.
module Herviboro
  @definir = 'Sólo me alimento de vegetales!'

  def self.definir
    @definir
  end

  def dieta
    "Soy un Herviboro!"
  end
end

class Animal
  def saludar
    "Soy un animal!"
  end
end

class Conejo < Animal
  include Herviboro
  def initialize(name)
    @name = name
  end
end

conejo = Conejo.new('Bugs Bunny')
conejo.saludar
conejo.dieta
puts Herviboro.definir

# Pregunta: ¿Por qué es mejor solución la implementación de Mixin que mediante Herencia de Herencia?

# Lo bueno de los mixin contra la herencia multiple, es que te permite usar modulos (reutilizando otro codigo) tomando en cuenta
# que los modulos pueden contener muchas clases y sub-modulos evitando hacer esto con la herencia simple
# Conejo < Animal < Herviboro -> Herencia simple

# Conejo < Animal
# include Herbivoro -> Usando mixin y modulos