a,b = gets.chomp.split(" ").map(&:to_i)
x = [a,b]
c = 0
if a == b
  c = a + b
else
  c = 2*x.max - 1
end
puts c