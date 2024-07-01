a, b, c = gets.chomp.split(' ').map(&:to_i)

d = c - a - b

if d > 0 && d * d > 4 * a * b
  puts 'Yes'
else
  puts 'No'
end