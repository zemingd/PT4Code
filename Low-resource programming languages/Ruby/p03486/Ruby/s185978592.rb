s = gets.chomp.chars.sort
t = gets.chomp.chars.sort.reverse

if s < t
  puts 'Yes'
else
  puts 'No'
end
