a, b = gets.strip.split.map(&:to_i)
c = a + b
d = a - b
e = a * b
if c >= d && c >= e 
  puts c
elsif d >= c && d >= e
  puts d
else
  puts e
end