a, b, c = gets.chomp.split.map(&:to_i)

if a + 2 * Math.sqrt(a * b) + b < c
  puts 'Yes'
else
  puts 'No'
end