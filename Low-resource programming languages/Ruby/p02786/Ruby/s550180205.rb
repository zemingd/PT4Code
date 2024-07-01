h = gets.to_i
n = 1
count = 0
while h > 0 do
  count += n
  h /= 2
  n *= 2
end
puts count
