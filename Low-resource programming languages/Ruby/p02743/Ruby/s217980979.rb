a, b, c = gets.split.map(&:to_i)
if c - a - b >=0 && (c - a - b) ** 2 > 4 * a * b
  puts 'Yes'
else
  puts 'No'
end