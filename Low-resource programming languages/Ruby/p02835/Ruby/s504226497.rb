a,b,c = gets.split(' ').map(&:to_i)
if a + b + c > 21
  puts 'bust'
else
  puts 'win'
end
