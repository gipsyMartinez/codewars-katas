# IS A PRIME NUMBER?

# Define a function isPrime that takes one integer argument and returns true or false depending on if the integer is a prime.

# Per Wikipedia, a prime number (or a prime) is a natural number greater than 1 that has no positive divisors other than 1 and itself.

# Example

# isPrime(5)
# => true
# Assumptions

# You can assume you will be given an integer input.
# You can not assume that the integer will be only positive. You may be given negative numbers.


require_relative "../src/is_a_prime_number"
require "test/unit"

class TestPrime < Test::Unit::TestCase
  def test_is_prime
    prime = Prime.new
    assert_equal(prime.isPrime(2), true)
    assert_equal(prime.isPrime(4), false)
    assert_equal(prime.isPrime(11), true)
  end
end
