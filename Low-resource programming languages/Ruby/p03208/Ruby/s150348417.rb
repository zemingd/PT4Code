n, k = gets.split.map(&:to_i)
h = n.times.map do
  gets.to_i
end.sort
i = 0
j = k-1
min = h[j] - h[i]
while j < h.length
  min = [h[j] - h[i], min].min
  j += 1
  i += 1
end

puts min