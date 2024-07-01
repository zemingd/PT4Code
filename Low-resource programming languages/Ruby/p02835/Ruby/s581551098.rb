line = gets.split(' ')

sum = 0
line.each do |number|
  sum += number.to_i
end

if sum <= 21
  puts "win"
else
  puts "bust"
end