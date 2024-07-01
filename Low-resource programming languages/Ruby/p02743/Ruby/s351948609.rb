A, B, C = gets.split.map(&:to_i)
D = C - A - B

if D ** 2 > 4 * A * B
  puts 'Yes'
else
  puts 'No'
end
