lines = []
while line = gets
    lines << line.chomp.split(' ').map(&:to_i)
end

N = lines[0][0]
M = lines[0][1]
C = lines[0][2]

ans = 0
for i in 1..N do
  score = 0
  for j in 1..M do
    score += lines[i+1][j-1] * lines[1][j-1]
  end
  if score + C > 0 then
    ans += 1
  end
end
puts ans