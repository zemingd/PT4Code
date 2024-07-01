a, b, c = gets.split.map(&:to_i)
if (a..b).include?(c)
  puts 'Yes'
else
  puts 'No'
end