x, y = gets.strip.split
if x == y
  puts '='
else
  puts x.ord < y.ord ? '<' : '>'
end