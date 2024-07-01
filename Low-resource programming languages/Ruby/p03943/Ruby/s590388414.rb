a,b,c= gets.split.map(&:to_i).sort

if c == a + b
  puts 'Yes'
else
  puts 'No'
end