N = gets().to_i
p = Array.new(N,0)
for i in 0 .. N - 1
  p[i] = gets().to_i
end
S = 0
for i in 0 .. N - 1
  S = S + p[i]
end
S = S - p.max * 0.2
print(S)
