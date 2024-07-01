N,K=gets.split.map(&:to_i)
dp0 = 1
(N-1).times do
  dp0 *= K-1
end

p dp0*K