n, m = gets.to_s.split.map(&:to_i)
h = [0] + gets.to_s.split.map(&:to_i)
ans = [0] + [1] * n

m.times do
  a, b = gets.split.map(&:to_i)
  h[a] < h[b] ? ans[a] = 0 : ans[b] = 0
end
puts ans.sum
