a, b = gets.split.map(&:to_i)

def my_gcd(x, y)
  return x if y.zero?

  my_gcd(y, x % y)
end

def my_prime_division(n)
  res = Hash.new(0)
  i = 2
  while i * i <= n
    next if n % i != 0

    while n % i == 0
      n /= i
      res[i] += 1
    end
    i += 1
  end
  res
end

# puts Prime.prime_division(a.gcd(b)).size + 1
puts my_prime_division(my_gcd(a, b)).size + 1
