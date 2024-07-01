n = gets.to_i
p = gets.split.map(&:to_i)

min = 200001
count = 1
min = p[0]
(n-1).times do |i|
  if min > p[i+1]
    min = p[i+1]
  end
  if min >= p[i+1]
    count += 1
  end
end

print count