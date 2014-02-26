require_relative '../prime_multiplication_table'
require 'test/unit'

class PrimesContainerTest < Test::Unit::TestCase
  def setup
    @primes_container = PrimesContainer.new
    @one_hundred_element_primes_container = PrimesContainer.new(100)
  end

  def test_primes_container_is_initialized_completely
    assert_not_nil(@primes_container)
    assert_equal([2, 3, 5, 7, 11, 13, 17, 19, 23, 29], @primes_container.values )
    assert_equal(29, @primes_container.seed )
  end

  def test_number_of_primes_equals_parameter
    assert_equal(100, @one_hundred_element_primes_container.values.length)
    assert_equal(541, @one_hundred_element_primes_container.seed )
  end

end

