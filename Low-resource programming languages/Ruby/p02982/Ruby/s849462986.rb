n, d = gets.split(' ').map(&:to_i)
arr = []
n.times do
  arr.push(gets.split(' ').map(&:to_i))
end

count = 0
for i in 0...n do
  line1 = arr[i]
  for j in (i + 1)...n do
    line2 = arr[j]
    sum = 0
    for k in 0...d do
      sum += (line1[k] - line2[k]) ** 2
    end
    count += 1 if (sum ** 0.5) == (sum ** 0.5).to_i
  end
end

puts count