a, op, b = gets.chomp.split(" ")
a = a.to_i
b = b.to_i

if op == "+"
  puts a + b
else
  puts a - b
end