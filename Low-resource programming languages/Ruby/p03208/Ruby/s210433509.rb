DBG = !true
n,k = gets.split.map{|x| x.to_i}
h = []
for i in 0...n
  h << gets.to_i
end

mindist = 1000000001
h.sort!
print h if DBG
for i in 0..(n-k)
  d = h[i+k-1] - h[i]
  mindist = d if d < mindist
end
print mindist
