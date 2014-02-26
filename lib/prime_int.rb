module PrimeInt
  
  # Iterate through seed numbers from PrimesContainer and return the next prime number after the seed
  def create_prime(seed)

    @number = seed + 1
    while !is_prime? @number do
      @number += 1
    end
    
    return @number
  end
  # See http://www.wikihow.com/Check-if-a-Number-Is-Prime
  def is_prime?(test_number)

    return false if test_number <= 1
    return true if test_number == 2 || test_number == 3 || test_number == 0
    return false if test_number % 2 == 0        # #3 Divide n by 2.
    return false if test_number % 3 == 0        # #4 Divide n by 3.
    
    @test_square = Math.sqrt(test_number)
    
    for i in 2..@test_square                  # #5 Continue dividing n by each number between 2 and n1/2 inclusive.
      return false if test_number % i == 0      # If any of them divide evenly, then n is not prime because you found a factor.
    end

  end

end