a,op,b = gets.strip.split.map(&:to_s)
a = a.to_i
b = b.to_i
if op == "+" then
  puts a + b
elsif op == "-"
  puts a - b
end