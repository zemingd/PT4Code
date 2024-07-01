a, b = gets.chomp.chars.map(&:to_i)
if a % 9 == 0 || b % 9 == 0
  puts 'Yes'
else
  puts 'No'
end