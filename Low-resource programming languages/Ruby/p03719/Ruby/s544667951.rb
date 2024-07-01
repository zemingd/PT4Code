a, b, c = gets.split.map(&:to_s)
if c >= a && c <= b
  puts 'Yes'
else
  puts 'No'
end