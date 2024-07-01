group = [[1, 3, 5, 7, 8, 10, 12], [4, 6, 9, 11], [2]]

x, y = gets.split.map(&:to_i)

x_belongs_group = group.find { |array| array.include?(x) }

if x_belongs_group.include?(y)
  puts 'Yes'
else
  puts 'No'
end
