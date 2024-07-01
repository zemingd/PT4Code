n = gets.to_i
k = gets.to_i
a = 1
n.times do |i|
  if  a <= k
    a *= 2
  else
    a += k
  end
end