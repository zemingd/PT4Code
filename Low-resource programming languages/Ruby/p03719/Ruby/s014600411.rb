a, b, c = gets.split.map(&:to_i)

if a <= c && c <= b
  puts 'Yes'
else
  puts 'No'
end
