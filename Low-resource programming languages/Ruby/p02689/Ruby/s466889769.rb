n, m = gets.to_s.split.map(&:to_i)
h = [0] + gets.to_s.split.map(&:to_i)
ans = [0] + [1] * n

m.times do
  a, b = gets.split.map(&:to_i)
  if h[a] < h[b]
    ans[a] = 0
  elsif h[a] > h[b]
    ans[b] = 0
  else
    ans[a] = 0
    ans[b] = 0
  end
end
puts ans.sum
