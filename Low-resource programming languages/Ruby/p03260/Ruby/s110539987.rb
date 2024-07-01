a, b = gets.chomp.split.map(&:to_i)
if a * b % 2 == 0
  puts 'No'
else
  puts 'Yes'
end