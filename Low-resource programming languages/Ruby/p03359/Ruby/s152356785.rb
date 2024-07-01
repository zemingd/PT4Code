m, d = gets.chomp.split.map(&:to_i)

if m <= d
  puts m
else
  puts m - 1
end
