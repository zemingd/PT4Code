MAX = 8
MIN = 1
n = gets.to_i
a = gets.split().map(&:to_i)
col = Array[0, 0, 0, 0, 0, 0, 0, 0, 0]
min = 0
max = 0
for i in a do
  c = i / 400
  if c >= 8
    c = 8
  end
  col[c] = col[c] + 1
end
i = 0
while i < 8
  if col[i] > 0
    min += 1
    max += 1
  end
  i += 1
end
if col[8] > 0
  max += col[8]
  if max > MAX
    max = MAX
  end
end
if min == 0
  min = MIN
end
printf("%d %d\n", min, max)