x = gets.chomp.to_i
if x == 1
  puts 1
else
k = 2
l = 1
array = []
while k*k <= x do
  while k**l <=x do
    array << k**l
    l += 1
  end
  k += 1
  l = 1

end
puts array.max
end
