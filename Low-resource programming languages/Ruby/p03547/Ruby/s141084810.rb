A = 10
B = 11
C = 12
D = 13
E = 14
F = 15
a,b = gets.split.map(&:to_i)
if a > b 
  puts ">"
elsif a == b
  puts "="
else
  puts "<"
end