N, K = gets.split.map(&:to_i)
ds = gets.split.join

ans = N
while ans.to_s.delete(ds) != ans.to_s
  ans += 1
end
p ans