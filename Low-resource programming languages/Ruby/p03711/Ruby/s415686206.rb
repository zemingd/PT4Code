x, y = gets.split.map(&:to_i)

if [1, 3, 5, 7, 8, 10, 12].find {|n| n == x} != nil
  if [1, 3, 5, 7, 8, 10, 12].find {|n| n == y} != nil
    puts 'Yes'
  else
    puts 'No'
  end
elsif [4, 6, 9, 11].find {|n| n == x} != nil
  if [4, 6, 9, 11].find {|n| n == y} != nil
    puts 'Yes'
  elsif
    puts 'No'
  end
else
  puts 'No'
end
