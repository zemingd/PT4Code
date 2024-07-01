=begin
number = 105
count = 1
divisor = 0
ans = 0
loop do 
  break if number > 200
  while count <= number
    divisor += 1 if number%count == 0
    count += 1
  end
  if divisor == 8
    ans += 1
    puts number
  end
  count = 1
  number += 2
  divisor = 0
end
puts ans
=end

a = gets.to_i
if a >=195
  puts 5
elsif a >= 189
  puts 4
elsif a >= 165
  puts 3
elsif a >= 135
  puts 2
elsif a >= 105
  puts 1
else
  puts 0
end
