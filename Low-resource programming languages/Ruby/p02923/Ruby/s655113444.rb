n = gets.to_i
h = gets.split.map(&:to_i)
ans = [0]
cnt = 0
(n - 1).times do |i|
  if h[i] >= h[i + 1]
    cnt += 1
  end
  if h[i] < h[i + 1] || i == n - 2
    ans << cnt
    cnt = 0
  end
end
puts ans.max
