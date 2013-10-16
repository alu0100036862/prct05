!# /usr/bin/ruby
require './racional.rb'

#################################################################
###################### MÉTODOS y FUNCIONES ######################
#################################################################

# Funcion menu
def menu
  
  system ("clear")
  opcion = 0

  # Menu
  while (opcion < 1 or opcion > 6)

    puts "LENGUAJES Y PARADIGMAS DE LA PROGRAMACIÓN"
    puts "Práctica 5: Números racionales"

    puts

    opc = ["\t1. Suma","\t2. Resta","\t3. Producto","\t4. División","\t5. Mostrar número racionales","\t6. Salir"]
    opc.each { |opc| puts opc }
    opcion = gets.chomp
    opcion = opcion.to_i

    # Comprobar elección
    if (opcion < 1 or opcion > 6)
      puts ("Debe seleccionar una opción correcta")
    end

  end

  return opcion

end

# Parar el programa
def pausa
     while gets
      break
    end
end

# Programa principal
def main

  # Obtenemos los números racionales
  STDOUT.flush
  print "Numerador número racional A: "
  nA = gets.chomp.to_f
  print "Denominador número racional A: "
  dA = gets.chomp.to_f
  print "Numerador número racional B: "
  nB = gets.chomp.to_f
  print "Denominador número racional B: "
  dB = gets.chomp.to_f

  # Creamos los objetos de los números racionales
  mcd = gcd(nA,dA)
  numRacA = Fraccion.new(nA/mcd, dA/mcd)
  mcd = gcd(nB,dB)
  numRacB = Fraccion.new(nB/mcd, dB/mcd)

  # Mostramos el menú y realizamos la selección del usuario
  opc = 0
  while (opc != 6)

    # menu
    opc = menu

    case opc

      when 1  # suma

	puts "Suma de números racionales"
	puts "Numero racional A"
	numRacA.to_s()
	puts "\n"
	puts "Numero racional B"
	numRacB.to_s()
	puts "\nSuma"
	numRacRes = numRacA.suma(numRacB)
	numRacRes.to_s()

      when 2  # resta

	puts "Resta de números racionales"
	puts "Numero racional A"
	numRacA.to_s()
	puts "\n"
	puts "Numero racional B"
	numRacB.to_s()
	puts "\nResta"
        numRacRes = numRacA.resta(numRacB)
        numRacRes.to_s()

      when 3  # producto

	puts "Producto de números racionales"
	puts "Numero racional A"
	numRacA.to_s()
	puts "\n"
	puts "Numero racional B"
	numRacB.to_s()
	puts "\nProducto"
        numRacRes = numRacA.producto(numRacB)
        numRacRes.to_s()
  
      when 4  # división

	puts "División de números racionales"
	puts "Numero racional A"
	numRacA.to_s()
	puts "\n"
	puts "Numero racional B"
	numRacB.to_s()
	puts "\nDivisión"
        numRacRes = numRacA.division(numRacB)
        numRacRes.to_s()

      when 5  # mostrar números racionales

	puts "Numero racional A"
	numRacA.to_s()
	puts "\n"
	puts "Numero racional B"
	numRacB.to_s()
    
    end
    
    # Esperamos respuesta del usuario
    if (opc != 6)
      pausa
    end
 
  end

end

# Ejecutamos el programa
main
