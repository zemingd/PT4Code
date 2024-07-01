n = gets.chomp
if n.size >= 7 && n == n.reverse && n[0..2] == n.reverse[0..2]
  puts 'Yes'
else
  puts 'No'
end