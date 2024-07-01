H = gets.to_i
k = (0...50).find{ |i| (H >> i) == 1 }
hs = Array.new(k+1, 0)
hs[-1] = 1
t = 0
(0...hs.size).reverse_each{ |i|
  t += hs[i]
  if i > 0
    hs[i-1] += hs[i] * 2
  end
  hs[i] = 0
  #p [t, hs]
}
p t
