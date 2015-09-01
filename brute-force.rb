# uses the Prime functionality--i could redo this building my own prime function
# i could also use a seive to find prime numbers
require "Prime"

class ListPrimes


  def initialize(limit)
    @limit = limit
    @primes = get_primes
  end

  def get_primes
    i = 0
    primes = []
    while primes.count < @limit
      primes << i if Prime.prime?(i)
      i += 1
    end
    primes
  end

  def last_prime
    @primes.last
  end
end

puts "enter limit"
limit = gets.strip.to_i
puts "answer: #{ListPrimes.new(limit).last_prime}"


#refactor should use a sieve