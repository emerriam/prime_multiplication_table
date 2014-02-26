require_relative '../primes_container'
require_relative '../multiplication_table'
require 'test/unit'

class MultiplicationTableTest < Test::Unit::TestCase
  def setup
    @primes_container = PrimesContainer.new
    @multiplication_table = MultiplicationTable.new(@primes_container)
  end
  
  def test_multiplication_table_is_initialized_completely
    assert_not_nil(@multiplication_table, "Multiplication table was not initialized")
    assert_equal(@multiplication_table.values.length, 10, "Unexpected vertical array length ")
    assert_equal(@multiplication_table.grid.length, 11, "Unexpected grid length")
    assert_equal(841, @multiplication_table.grid[10][10], "Final grid prime incorrect")
    assert_equal(0, @multiplication_table.grid[0][0], "First grid prime incorrect")
  end

end
