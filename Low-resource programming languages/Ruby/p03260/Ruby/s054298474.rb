a, b = gets.split.map(&:to_i)

if [a,b].include?(2)
  puts 'No'
else
  puts 'Yes'
end