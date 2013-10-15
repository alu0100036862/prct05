# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion

  # Inicialización
  def initialize(numerador, denominador)
    @num = numerador
    @den = denominador
  end
  
  # Atributos
  attr_reader :num, :den
  
  # Mostrar número racional
  def to_s

    mcd = gcd(num,den)
    puts "#{num/mcd} / #{den/mcd}"

  end
 
  # Operación de suma de números racionales
  def suma(racionalB)

    numNew = 0
    denNew = 1

    case (den == racionalB.den)
    
      when true
	numNew = num + racionalB.num
        denNew = den

      else
	numNew = (num * racionalB.den) + (den * racionalB.num)
	denNew = (den * racionalB.den)

    end

    fraccionResultado = Fraccion.new(numNew, denNew)
    fraccionResultado.to_s()

  end

  # Operación de resta de números racionales
  def resta(racionalB)

    numNew = 0
    denNew = 1

    case (den == racionalB.den)
    
      when true
        numNew = num - racionalB.num
        denNew = den

      else
        numNew = (num * racionalB.den) - (den * racionalB.num)
        denNew = (den * racionalB.den)

    end

    fraccionResultado = Fraccion.new(numNew, denNew)
    fraccionResultado.to_s()

  end
  
  # Operación de producto de números racionales  
  def producto(racionalB)

    numNew = 0
    denNew = 1

    numNew = (num * racionalB.num)
    denNew = (den * racionalB.den)

    fraccionResultado = Fraccion.new(numNew, denNew)
    fraccionResultado.to_s()

  end

  # Operación de división de números racionales  
  def division(racionalB)

    numNew = 0
    denNew = 1

    numNew = (num * racionalB.den)
    denNew = (den * racionalB.num)

    fraccionResultado = Fraccion.new(numNew, denNew)
    fraccionResultado.to_s()

  end

end
