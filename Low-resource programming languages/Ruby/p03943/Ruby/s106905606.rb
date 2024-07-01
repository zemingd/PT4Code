a, b, c = gets.split(' ').map(&:to_i)
if a + b == c
  puts 'Yes'
elsif b + c == a
  puts 'Yes'
elsif a + c == b
  puts 'Yes'
else
  puts 'No'
end