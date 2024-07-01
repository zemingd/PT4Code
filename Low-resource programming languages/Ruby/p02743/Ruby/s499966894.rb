A, B, C = gets.split.map(&:to_i)
D = (C - A - B) ** 2

if 0 > 4 * A * B - D
  puts 'Yes'
else
  puts 'No'
end
