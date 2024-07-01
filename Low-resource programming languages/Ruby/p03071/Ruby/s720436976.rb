a,b = gets.chomp.split(" ").map(&:to_i)
x = 0
if a > b
  x = a + a - 1
else
  x = b + b - 1
end
if a == b
  x = a + b
end
puts x