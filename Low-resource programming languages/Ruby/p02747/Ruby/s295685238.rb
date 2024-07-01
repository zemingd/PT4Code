c = gets.chomp.to_s
 
puts 'No' if c.size < 2
 
if c.include? 'hi'
  puts 'Yes'
else
  puts 'No'
end