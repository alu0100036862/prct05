# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase

  def setup
    @matrizA = Fraccion.new(3,8)
    @matrizB = Fraccion.new(1,6)
  end

  def tear_down
    # nothing
  end

  def test_simple
    assert_equal("3.0 / 8.0", (@matrizA).to_s())
    assert_equal("13.0 / 24.0", (@matrizA.suma(@matrizB)).to_s())
    assert_equal("5.0 / 24.0", (@matrizA.resta(@matrizB)).to_s())
    assert_equal("1.0 / 16.0", (@matrizA.producto(@matrizB)).to_s())
    assert_equal("9.0 / 4.0", (@matrizA.division(@matrizB)).to_s())
  end

  def test_type_check
    assert_raise(RuntimeError) {Fraccion.new(1,'a')}
  end

  def test_failure
    assert_equal("1.0 / 1.0", (@matrizA.suma(@matrizB)).to_s(), "Suma")
    assert_equal("1.0 / 1.0", (@matrizA.resta(@matrizB)).to_s(), "Resta")
    assert_equal("1.0 / 1.0", (@matrizA.producto(@matrizB)).to_s(), "Producto")
    assert_equal("1.0 / 1.0", (@matrizA.division(@matrizB)).to_s(), "División")
  end

end
