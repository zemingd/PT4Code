x, y = gets.split.map(&:to_i)
group = [1, 3, 5, 7, 8, 10, 12]

if group.include? x
  puts group.include?(y) ? 'Yes' : 'No'
elsif x == 2
  puts y == 2 ? 'Yes' : 'No'
else
  puts [4, 6, 9, 11].include?(y) ? 'Yes' : 'No'
end