n = gets.to_i
num = gets.strip.split.map(&:to_i)
i = 0
sum = 0
h = num[0]
while i < n do
  if num[i] >= h
    sum += 1
  end
  if num[i] >= h
    h = num[i]
  end
  i += 1
end
puts sum