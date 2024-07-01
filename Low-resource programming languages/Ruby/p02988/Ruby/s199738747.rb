n = gets.to_i
p = gets.split.map(&:to_i)
count = 0
for i in 1..(n-2) do
  if [p[i-1], p[i], p[i+1]].sort[1] == p[i]
    count += 1
  end
end
puts count
