a,b,c= gets.split.map(&:to_i)
if a*b*c == 5*5*7
  puts 'YES'
else
  puts 'NO'
end