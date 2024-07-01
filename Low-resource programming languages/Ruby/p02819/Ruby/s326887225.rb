x = gets.strip.to_i

def is_prime?(x)
  true if x == 2 || x == 3
  2.upto(x / 2) do |i|
    return false if x % i == 0
  end
  true
end

while true
  break if is_prime? x
  x += 1
end
puts x