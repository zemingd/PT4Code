x = gets.to_i

def is_prime(n)
  return false if n < 2
  return true if n == 2

  return false if n % 2 == 0

  for i in 3..Math.sqrt(n)
    return false if n % i == 0
  end

  true
end

while !is_prime(x) do
  x += 1
end

puts x