N = gets().to_i
p = Array.new(N,0)
for i in 0 .. N - 1
  p[i] = gets().to_i
end
T = p.inject(:+)
S = T - p.max * 0.5
puts S.to_i