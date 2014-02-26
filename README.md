prime_multiplication_table
==========================
 Objective
 
 Write a program that prints out a multiplication table of the ﬁrst 10 prime
 numbers.
 
 
 The program must run from the command line and print one table to
 STDOUT.
 
 
 The ﬁrst row and column of the table should have the 10 primes, with
 each cell containing the product of the primes for the corresponding row and
 column.
 
 
 
 Notes
 
 
 • Consider complexity. How fast does your code run? How does it scale?
 
 • Consider cases where we want N primes.
 
 • Do not use the Prime class from stdlib (write your own code).
 
 • Write tests. Try to demonstrate TDD/BDD.

 From http://www.wikihow.com/Check-if-a-Number-Is-Prime
 
 Method 1 of 4: Trial division

 1 Trial division is the simplest test for primality. 
 	It is based on the definition of a prime number. 
 	
 	A number is prime if it has no divisors other than itself and one.
 2 Let n be the number you want to test.
 
 3 Divide n by 2. If the result is an integer, then n is not prime because 2
 	is a factor of n. Look at the last digit and if it's an even number, 
 	it's divisible by 2. If not, continue.
 	
 4 Divide n by 3. If the result is an integer, then n is not prime because 3 
 	is a factor of n. If not, continue.
 	
 5 Continue dividing n by each number between 2 and n1/2 inclusive. If any of 
 	them divide evenly, then n is not prime because you found a factor. If n has 
 	no factors less than its square root, then n is prime. It is sufficient 
 	to check only for divisors less than or equal to n1/2 because if 
 	n = a*b, then a and b can't both exceed the square root of n.
 	
 6 This can be optimised by skipping the test division by numbers which are 
 	obviously not prime. For example, skip every even number greater than two
 	and every multiple of three greater than three.

 REQUIREMENTS: 
 		terminal-table gem
 
 USAGE RUN: 
 		$ gem install terminal-table
 		
 		$ ./run_program <size>
 		
			default <size> is 10.

 USAGE TEST: 
 
 		$ ./run_program test


