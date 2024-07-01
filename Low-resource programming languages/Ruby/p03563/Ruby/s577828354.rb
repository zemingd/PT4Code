n = gets.to_i
k = gets.to_i
x = 1
n.times do
  if x < k then x *= 2
  else x += k
  end
end
print x.to_s