n = gets.to_i
h = gets.split.map(&:to_i)
ans = 0
cur = 0
(n-1).times do |i|
  if h[i] >= h[i+1]
    cur += 1
  else
    cur = 0
  end
  ans = cur if cur > ans
end
p ans