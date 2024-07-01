a, b, c, d = gets.strip.split(" ").map(&:to_i)

if a + b >= d
  puts a 
else
  puts a + ((d - a - b)* -1)
end