a,b,x=gets.split.map(&:to_i)

if a + b < x
  puts 'NO'
elsif x < a
  puts 'NO'
else
  puts 'YES'
end