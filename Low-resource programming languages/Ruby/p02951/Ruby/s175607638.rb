a, b, c = gets.chomp.split.map(&:to_i)
if c - (a - b) < 0
  puts 0
else
  puts c - (a - b)
end
