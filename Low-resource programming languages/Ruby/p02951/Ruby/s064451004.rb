a, b, c = gets.split.map(&:to_i)
res = c - (a - b)
if res > 0
  puts res
else
  puts 0
end
  