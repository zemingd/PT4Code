m,d = gets.split.map(&:to_i)
if m < d
  puts m - 1
else
  puts m
end