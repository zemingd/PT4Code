a,op,b = gets.chomp.split(" ").map(&:to_i)

if op == "+"
  puts a + b
elsif op =="-"
  puts a - b
end