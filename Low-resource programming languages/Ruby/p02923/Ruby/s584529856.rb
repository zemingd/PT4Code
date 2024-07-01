N = gets.to_i
h = []
h = gets.split.map(&:to_i)

ans = 0
cnt = 0
(N-1).times do |i|
  if h[i] >= h[i+1]
    cnt += 1
    ans = [ans,cnt].max
  else
    cnt = 0
  end
end
puts ans