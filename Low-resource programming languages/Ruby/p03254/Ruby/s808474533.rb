n, x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort
sum = 0
count = 0
for i in 0...n do
  sum += a[i]
  if sum <= x
    count += 1
  else
    break
  end
end
count -= 1 if sum < x
puts count
