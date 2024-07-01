def prime?(x)
  return false if x <= 1
  (2..x-1).each do |y|
    return false if x % y == 0
  end
  true
end
x = gets.to_i
prime = x
while !prime?(prime)
  prime += 1
end
puts prime