s = gets.chomp.chars.sort.reduce(:+)
t = gets.chomp.chars.sort.reverse.reduce(:+)
if s < t
  puts 'Yes'
else
  puts 'No'
end