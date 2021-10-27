require_relative "bin_truck"
require "test/unit"

class TestBinTruck < Test::Unit::TestCase
	def test_equal
		truck = BinTruck.new(1, 2, "NORTH")
		assert_equal(truck.x, 1)
		assert_equal(truck.y, 2)
		assert_equal(truck.f, "NORTH")

		truck.left
		assert_equal(truck.f, "WEST")

		truck.right
		assert_equal(truck.f, "NORTH")
	end
end