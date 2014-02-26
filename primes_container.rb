require_relative './lib/prime_int'

class PrimesContainer
  include PrimeInt
  
  attr_reader :values, :seed

  def initialize(length = 10)
    @values = []
    @seed = 0;

    # Grow @values until reaches length
    while @values.length < length
      @seed = create_prime(@seed)
      @values << @seed
    end
  end
end

