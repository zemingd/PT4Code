a,b,c = gets.split.map(&:to_i)
if a+b==c or b+c==a or c+a==b
  puts 'Yes'
else
  puts 'No'
end