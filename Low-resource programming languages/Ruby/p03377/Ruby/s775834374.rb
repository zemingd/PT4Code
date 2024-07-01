a,b,x = gets.split(" ").map(&:to_i)

if a < x && x <= a + b
  puts :YES
elsif x == a
  puts :YES
elsif x == a + b
  puts :YES
elsif x < a + b
  puts :NO
else
  puts :NO
end