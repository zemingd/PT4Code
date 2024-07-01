n = gets.to_i
h = gets.split.map(&:to_i)
cnt = []
c = 0
i = 0
while i+1 < h.size
  if h[i] >= h[i+1]
    c += 1
  else
    cnt.push c
    c = 0
  end
  i += 1
end
cnt.push c
p cnt.max
