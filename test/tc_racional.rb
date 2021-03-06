# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "../src/racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase
	def test_constructor
		assert Fraccion.new(4,6)
		assert Fraccion.new(0,0)
		assert Fraccion.new(-1,4)
		assert Fraccion.new(7,200)
		assert Fraccion.new(40,3)
	end
	def test_to_s
		test1 = Fraccion.new(4,8)
		assert_equal nil, test1.to_s
	end
	def test_suma
		a = Fraccion.new(1,4)
		b = Fraccion.new(1,3)
		c = Fraccion.new(0,0)
		assert c.suma(a, b)
		assert_equal 12, c.suma(a, b)
	end
	def test_resta
		a = Fraccion.new(2,3)
		b = Fraccion.new(1,2)
		c = Fraccion.new(0,0)
		assert c.resta(a, b)
		assert_equal 6, c.resta(a, b)
	end
	def test_producto
		a = Fraccion.new(223,45)
		b = Fraccion.new(11,45)
		c = Fraccion.new(0,0)
		assert c.producto(a, b)
		assert_equal 2025, c.producto(a, b)
	end
	def test_producto
		a = Fraccion.new(12,2)
		b = Fraccion.new(3,5)
		c = Fraccion.new(0,0)
		assert c.division(a, b)
		assert_equal 6, c.division(a, b)
	end
end
