require 'set'

n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i).shuffle

def gcd(n1, n2)
  return n2 if n1 % n2 == 0
  gcd(n2, n1 % n2)
end

if a.inject { |acc, k| gcd(acc, k) } > 1
  puts 'not coprime'
else
  m = a.max
  d = (0..m).map { nil }
  (2..m).each { |k| k.step(m, k) { |i| d[i] ||= k } }

  setwise_coprime = false

  s = Set.new
  a.each do |k|
    primes = Set.new
    while k > 1
      primes.add(d[k])
      k /= d[k]
    end

    primes.each do |prime|
      if s.member?(prime)
        setwise_coprime = true
        break
      else
        s.add(prime)
      end
    end
    break if setwise_coprime
  end

  if setwise_coprime
    puts 'setwise coprime'
  else
    puts 'pairwise coprime'
  end
end
