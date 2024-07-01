d,t,s = gets.chomp.split.map(&:to_i)
 
if d <= (s*t)
  puts 'Yes'
else
  puts 'No'
end