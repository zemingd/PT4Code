n = gets.to_i
ary = []
n.times do
  ary << gets.to_i
end
h = ary[0]
for i in 1..n-1
  h = h.lcm(ary[i])
end
puts h