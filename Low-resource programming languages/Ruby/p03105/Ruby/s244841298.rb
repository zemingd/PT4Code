a , b, c = gets.split.map(&:to_i)
if a * c == b
  puts c
elsif a * c <= b
  puts c
else
  puts 0
end