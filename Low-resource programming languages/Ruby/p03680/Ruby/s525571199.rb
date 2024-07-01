n = gets.to_i
a = []
for i in 0...n do
  a[i] = gets.to_i
end
count = 0
i = 0
while i != 1 do
  i = a[i] - 1
  if i == 0
    count = -1
    break
  end
  count += 1
end
puts count
