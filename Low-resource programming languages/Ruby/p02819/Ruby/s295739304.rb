x = gets.to_i

def isPrime(i)
  (2..i**0.5).each do |j|
    return false if i % j == 0
  end
  return true
end

while !isPrime(x)
  x += 1
end

puts x