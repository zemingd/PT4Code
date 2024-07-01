lines = []
while line = gets
    lines << line.chomp.split(' ').map(&:to_i)
end

N = lines[0][0]
D = lines[0][1]

def square?(x)
  y = (x ** 0.5).to_i
  if (y-1) ** 2 == x or y ** 2 == x or (y+1) ** 2 == x then
    return true
  else
    return false
  end
end

ans = 0
for i in 1..N-1 do
  for j in i+1..N do
    dis2 = 0
    for k in 1..D do
      dis2 += (lines[i][k-1] - lines[j][k-1]) ** 2
    end
    if square?(dis2) then
      ans += 1
    end
  end
end

print ans