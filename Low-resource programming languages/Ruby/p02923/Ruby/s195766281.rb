n = gets.to_i
h = gets.split.map(&:to_i)

ans = 0
cur = h[0]
j = 0
(0...(h.length-1)).each do |i|
  if h[i] >= h[i+1]
    j += 1
  else
    if ans < j
      ans = j
    end
    cur = h[i+1]
    j = 0
  end
end
if ans < j
  ans = j
end
p ans