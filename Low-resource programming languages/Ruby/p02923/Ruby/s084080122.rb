n = gets.to_i
h = gets.split.map(&:to_i)
count = -1
max = 0
prev = 1000000000
for i in 0...n do
  if h[i] <= prev
    count += 1
  else
    max = count if max < count
    count = 0
  end
  prev = h[i]
end
max = count if max < count
puts max
