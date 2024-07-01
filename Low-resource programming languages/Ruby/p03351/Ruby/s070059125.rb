a, b, c, d = gets.split.map(&:to_i)
if abs(a - b) <= d && abs(b - c) <= d
  puts 'Yes'
else
  puts 'No'
end