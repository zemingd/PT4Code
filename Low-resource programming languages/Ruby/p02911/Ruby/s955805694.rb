# your code goes here
N, K, Q = gets.split.map(&:to_i)
As = Q.times.map{gets.to_i}

ans = Array.new(N, 0)

for A in As do
  ans[A-1] += 1
end

for i in 0...N do
  puts (Q - ans[i] >= K) ? "NO" : "YES"
end