a, b, c = gets.split()
s = a + b + c
if s.to_i % 4 == 0
  puts "YES"
else
  puts "NO"
end