n = gets.to_i
a = []
x = []
y = []
for i in 0...n do
  a[i] = gets.to_i
  x[i] = []
  y[i] = []
  for j in 0...a[i] do
    x[i][j], y[i][j] = gets.split.map(&:to_i)
  end
end
max_count = 0
for b in 0...(2 ** n) do
  ok = true
  count = 0
  for i in 0...n do
    h = (b >> i) & 1
    if h == 1
      count += 1
      for j in 0...a[i] do
        if (b >> (x[i][j] - 1)) & 1 != y[i][j]
          ok = false
          break
        end
      end
    end
  end
  if ok
    max_count = count if max_count < count
  end
end
puts max_count
