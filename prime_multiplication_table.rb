require_relative 'prime_multiplication_table'
require_relative 'multiplication_table'
require_relative 'primes_container'
require_relative './lib/prime_int'
require "terminal-table"

class PrimeMultiplicationTable

  def initialize(i_from_user = 10)
    @length   = i_from_user
    @primes_container = PrimesContainer.new(@length)
    @grid = MultiplicationTable.new(@primes_container)
    @grid.print
  end
end