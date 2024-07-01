n = gets.to_i
a = []
for i in 0...n do
  a[i] = gets.to_i
end
count = 0
i = 0
while i != 1 do
  j = a[i] - 1
  if j == i || j == 0
    count = -1
    break
  else
    i = j
    count += 1
  end
end
puts count
