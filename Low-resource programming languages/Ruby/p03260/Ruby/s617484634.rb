A,B = gets.split.map(&:to_i)
if (A*B).even?
  puts 'No'
else
  puts 'Yes'
end