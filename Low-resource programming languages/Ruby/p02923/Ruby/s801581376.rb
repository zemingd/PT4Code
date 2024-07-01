n = gets.to_i
h = gets.split.map(&:to_i)
max = 0
cnt = 0
for i in 0..(n-2)
  if h[i] >= h[i+1]
    cnt += 1
  else
    max = cnt if max < cnt
    cnt = 0
  end
end
max = cnt if max < cnt
puts max