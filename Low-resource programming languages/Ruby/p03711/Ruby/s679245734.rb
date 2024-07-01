a = [1, 3, 5, 7, 8, 10, 12]
b = [4, 6, 9, 11]
x, y = gets.split.map(&:to_i)
if a.include?(x)
  if a.include?(y)
    puts 'Yes'
  else
    puts 'No'
  end
elsif x != 2 && y != 2
  puts 'Yes'
else
  puts 'No'
end
