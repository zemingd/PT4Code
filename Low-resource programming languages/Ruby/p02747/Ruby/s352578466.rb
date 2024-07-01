c = gets.chomp.to_s

puts 'No' if c.size < 2

if c[0] == 'h' && c[1] == 'i'
  puts 'Yes'
else
  puts 'No'
end