require_relative '../lib/prime_int.rb'
require_relative '../primes_container.rb'
require 'test/unit'


class PrimeIntTest < Test::Unit::TestCase
  def setup
    @primes_container = PrimesContainer.new
  end
  
# A prime number must be greater than 1
  def test_numbers_less_than_one_are_not_prime
    assert_equal(false, @primes_container.is_prime?(0))
  end
  
# Divide n by 2. If the result is an integer, then n is not prime because 2
#  is a factor of n. Look at the last digit and if it's an even number, 
#  it's divisible by 2. If not, continue.
  def test_multiples_of_two_are_not_prime
    mults_of_two = (4..100).step(2).to_a
    
    mults_of_two.each do |x|
      assert_equal(false, @primes_container.is_prime?(x), "#{x} caused failure")
    end
  end

# Divide n by 3. If the result is an integer, then n is not prime because 3 
#  is a factor of n. If not, continue.
  def test_multiples_of_three_are_not_prime
    mults_of_three = (6..100).step(3).to_a

    mults_of_three.each do |x|
      assert_equal(false, @primes_container.is_prime?(x), "#{x} caused failure")
    end  
  end

# Continue dividing n by each number between 2 and n1/2 inclusive. If any of 
#  them divide evenly, then n is not prime because you found a factor. If n has 
#  no factors less than its square root, then n is prime. It is sufficient 
#  to check only for divisors less than or equal to n1/2 because if 
#  n = a*b, then a and b can't both exceed the square root of n.
  def test_numbers_with_divisors_are_not_prime
    seed_array = (4..150).step(1).to_a
    seed_array.each do |x|
      x_square = Math.sqrt(x)
      for i in 4..x_square 
        if x % i == 0
          assert_equal(false, @primes_container.is_prime?(x), "#{i} caused failure #{x % i}")
        end
      end
    end
  end
  
  
end
