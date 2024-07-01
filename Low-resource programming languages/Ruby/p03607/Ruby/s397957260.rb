n = gets.chomp.to_i
h = {}
n.times do
  d = gets.chomp.to_i
  h[d] = !h[d]
end
p h.to_a.count{|a|a[1]==true}