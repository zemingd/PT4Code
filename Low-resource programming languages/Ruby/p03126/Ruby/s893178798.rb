lines = []
while line = gets
    lines << line.chomp.split(' ').map(&:to_i)
end

N = lines[0][0]
M = lines[0][1]

num_like = []
for i in 1..M do
  num_like[i-1] = 0
end

for i in 1..N do
  k = lines[i][0]
  for j in 1..k do
    food = lines[i][j]
    num_like[food-1] += 1
  end
end

ans = 0
for i in 1..M do
  if num_like[i-1] == N then
    ans += 1
  end
end
puts ans