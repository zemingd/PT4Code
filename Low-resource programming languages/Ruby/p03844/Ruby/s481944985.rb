a, op, b = gets.chomp
a.to_i
b.to_i
if op == '+'
  puts a + b
else 
  puts a - b
end