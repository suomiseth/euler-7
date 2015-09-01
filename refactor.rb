class ListPrimes

  def initialize(limit)
    @limit = limit
    @primes = get_primes
  end

  def get_primes
    i = 0
    primes = []
    while primes.count < @limit
      primes << i if is_prime?(i)
      i += 1
    end
    primes
  end

  def last_prime
    @primes.last
  end

  def is_prime? (n)
    return false if n < 2
    Math.sqrt(n).floor.downto(2) do |x|
      return false if n % x == 0
    end
    true
  end
end

puts "enter limit"
limit = gets.strip.to_i
puts "answer: #{ListPrimes.new(limit).last_prime}"