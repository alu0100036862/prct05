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
    assert_equal("3 / 8", (@matrizA).to_s())
    assert_equal("13 / 24", (@matrizA.suma(@matrizB)).to_s())
    assert_equal("5 / 24", (@matrizA.resta(@matrizB)).to_s())
    assert_equal("1 / 16", (@matrizA.producto(@matrizB)).to_s())
    assert_equal("9 / 4", (@matrizA.division(@matrizB)).to_s())
  end

  def test_type_check
    assert_raise(RuntimeError) {Fraccion.new(1,'a')}
  end

  def test_failure
    assert_not_equal("1 / 1", (@matrizA.suma(@matrizB)).to_s(), "Suma")
    assert_not_equal("1 / 1", (@matrizA.resta(@matrizB)).to_s(), "Resta")
    assert_not_equal("1 / 1", (@matrizA.producto(@matrizB)).to_s(), "Producto")
    assert_not_equal("1 / 1", (@matrizA.division(@matrizB)).to_s(), "División")
  end

end
