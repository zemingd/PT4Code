n = gets.to_i
h = gets.split.map(&:to_i)
ans = 0
cnt = 0
(n-1).times do |i|
  if h[i] >= h[i+1]
    cnt += 1
  else
    cnt = 0
    ans = cnt if cnt > ans
  end
end
ans = cnt if cnt > ans
puts ans
