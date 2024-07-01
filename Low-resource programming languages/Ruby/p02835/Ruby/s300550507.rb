sum = 0
3.times do 
a = gets.to_i
sum += a
end
if sum >= 22
  puts 'bust'
else 
  puts 'win'
end