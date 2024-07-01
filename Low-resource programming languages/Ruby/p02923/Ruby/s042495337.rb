n = gets.to_i
h = gets.split.map(&:to_i)
max = 0
cnt = 0
n.pred.times do |i|
  if h[i + 1] > h[i]
    max = cnt if max < cnt
    cnt = 0
  else
    cnt += 1
  end
end
max = cnt if max < cnt
puts max