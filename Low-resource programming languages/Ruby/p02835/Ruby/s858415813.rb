sum = 0
gets.split(' ').each do |number|
  sum += number.to_i
end

if sum <= 21
  p "win"
else
  p "bust"
end