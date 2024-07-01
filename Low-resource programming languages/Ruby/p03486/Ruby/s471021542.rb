s = gets.chomp.chars
t = gets.chomp.chars

s = s.sort
t = t.sort.reverse
if (s <=> t) < 0
  puts 'Yes'
else
  puts 'No'
end
