c = gets.chomp.to_s

if c.size == 2 && c == 'hi'
  puts 'Yes'
elsif c.size == 4 && c == 'hihi'
  puts 'Yes'
elsif c.size == 6 && c == 'hihihi'
  puts 'Yes'
elsif c.size == 8 && c == 'hihihihi'
  puts 'Yes'
elsif c.size == 10 && c == 'hihihihihi'
  puts 'Yes'
else
  puts 'No'
end
