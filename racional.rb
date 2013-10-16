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
    
    # Llamamos a la función del máximo común divisor
    mcd = gcd(num,den)
    puts "#{num/mcd} / #{den/mcd}"

  end
 
  # Operación de suma de números racionales
  def suma(racionalB)

    # Inicializamos los valores
    numNew = 0
    denNew = 1

    # Suma
    case (den == racionalB.den)
    
      when true  # mismo denominador
	numNew = num + racionalB.num
        denNew = den

      else
	numNew = (num * racionalB.den) + (den * racionalB.num)
	denNew = (den * racionalB.den)

    end

    # Llamamos a la función del máximo común divisor
    mcd = gcd(numNew,denNew)
    fraccionResultado = Fraccion.new(numNew/mcd, denNew/mcd)
    fraccionResultado.to_s()

  end

  # Operación de resta de números racionales
  def resta(racionalB)

    # Inicializamos los valores
    numNew = 0
    denNew = 1

    # Resta
    case (den == racionalB.den)
    
      when true  # mismo denominador
        numNew = num - racionalB.num
        denNew = den

      else
        numNew = (num * racionalB.den) - (den * racionalB.num)
        denNew = (den * racionalB.den)

    end

    # Llamamos a la función del máximo común divisor
    mcd = gcd(numNew,denNew)
    fraccionResultado = Fraccion.new(numNew/mcd, denNew/mcd)
    fraccionResultado.to_s()

  end
  
  # Operación de producto de números racionales  
  def producto(racionalB)

    # Inicializamos los valores
    numNew = 0
    denNew = 1

    # Producto
    numNew = (num * racionalB.num)
    denNew = (den * racionalB.den)

    # Llamamos a la función del máximo común divisor
    mcd = gcd(numNew,denNew)
    fraccionResultado = Fraccion.new(numNew/mcd, denNew/mcd)
    fraccionResultado.to_s()

  end

  # Operación de división de números racionales  
  def division(racionalB)

    # Inicializamos los valores
    numNew = 0
    denNew = 1

    # División
    numNew = (num * racionalB.den)
    denNew = (den * racionalB.num)

    # Llamamos a la función del máximo común divisor
    mcd = gcd(numNew,denNew)
    fraccionResultado = Fraccion.new(numNew/mcd, denNew/mcd)
    fraccionResultado.to_s()

  end

end
