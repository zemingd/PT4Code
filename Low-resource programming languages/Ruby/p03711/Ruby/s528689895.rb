X, Y = gets.split.map(&:to_i)

group = [0, 1, 2, 1, 3, 1, 3, 1, 1, 3, 1, 3, 1]

if group[X] == group[Y]
  puts 'Yes'
else
  puts 'No'
end
