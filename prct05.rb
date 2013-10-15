!# /usr/bin/ruby
require './racional.rb'

#################################################################
###################### MÉTODOS y FUNCIONES ######################
#################################################################

# Funcion menu
def menu
  
  system ("clear")
  opcion = 0
  while (opcion < 1 or opcion > 6)

    opc = ["\t\tMENU","\t1. Suma","\t2. Resta","\t3. Producto","\t4. División","\t5. Mostrar número racionales","\t6. Salir"]
    opc.each { |opc| puts opc }
    opcion = gets.chomp
    opcion = opcion.to_i

    if (opcion < 1 or opcion > 6)
      puts ("Debe seleccionar una opción correcta")
    end

  end

  return opcion

end

# Esta funcion la utilizamos para pausar del programa
def pausa
     while gets
      break
    end
end

# Programa principal
def main

  STDOUT.flush
  print "Numerador número racional A: "
  nA = gets.chomp.to_f
  print "Denominador número racional A: "
  dA = gets.chomp.to_f
  print "Numerador número racional B: "
  nB = gets.chomp.to_f
  print "Denominador número racional B: "
  dB = gets.chomp.to_f
  numRacA = Fraccion.new(nA, dA)
  numRacB = Fraccion.new(nB, dB)

  puts "Número racional A"
  numRacA.to_s()

  puts "Número racional B"
  numRacB.to_s()

  opc = 0
  while (opc != 6)

    opc = menu

    case opc

      when 1

	puts "Suma de números racionales"
	puts "Numero racional A"
	numRacA.to_s()
	puts "\n"
	puts "Numero racional B"
	numRacB.to_s()
	puts "\nSuma"
	numRacRes = numRacA.suma(numRacB)
	numRacRes.to_s()

      when 2

	puts "Resta de números racionales"
	puts "Numero racional A"
	numRacA.to_s()
	puts "\n"
	puts "Numero racional B"
	numRacB.to_s()
	puts "\nResta"
        numRacRes = numRacA.resta(numRacB)
        numRacRes.to_s()

      when 3

	puts "Producto de números racionales"
	puts "Numero racional A"
	numRacA.to_s()
	puts "\n"
	puts "Numero racional B"
	numRacB.to_s()
	puts "\nProducto"
        numRacRes = numRacA.producto(numRacB)
        numRacRes.to_s()
  
      when 4

	puts "División de números racionales"
	puts "Numero racional A"
	numRacA.to_s()
	puts "\n"
	puts "Numero racional B"
	numRacB.to_s()
	puts "\nDivisión"
        numRacRes = numRacA.division(numRacB)
        numRacRes.to_s()

      when 5

	puts "Numero racional A"
	numRacA.to_s()
	puts "\n"
	puts "Numero racional B"
	numRacB.to_s()
    
    end
 
    if (opc != 6)
      pausa
    end
 
  end

end

main
