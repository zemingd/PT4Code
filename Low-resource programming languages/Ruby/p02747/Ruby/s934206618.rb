c = gets.chomp.to_s
 
if c.include? 'hi'
  puts 'Yes'
elsif c.include? 'hihi'
  puts 'Yes'
elsif c.include? 'hihihi'
  puts 'Yes'
elsif c.include? 'hihihihi'
  puts 'Yes'
elsif c.include? 'hihihihihi'
  puts 'Yes'
else
  puts 'No'
end