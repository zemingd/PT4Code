x = gets.to_i
num = 0
if x < 7
  num = 1
elsif x < 11
  num = 2
else
  num = (x / 11) * 2
  y = x % 11
  if y == 0
  elsif y < 7
    num += 1
  else
    num += 2
  end
end
puts num
