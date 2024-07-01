x = gets.to_i
a = gets.to_i
b = gets.to_i

n = x - a

while n >= b
  n -= b
end

puts n
