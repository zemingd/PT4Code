lines = []
while line = gets
    lines << line.chomp.split(' ').map(&:to_i)
end

N = lines[0][0]

monst = []
for i in 1..N+1 do
  monst[i-1] = lines[1][i-1]
end

remain = []
for i in 1..N do
  remain[i-1] = lines[2][i-1]
end

ans = 0
for i in 1..N do
  if monst[i-1] <= remain[i-1] then
    ans += monst[i-1]
    remain[i-1] -= monst[i-1]
  else
    ans += remain[i-1]
    remain[i-1] = 0
  end
  if remain[i-1] > 0 then
    if monst[i] <= remain[i-1] then
      ans += monst[i]
      monst[i] = 0
    else
      ans += remain[i-1]
      monst[i] -= remain[i-1]
    end
  end
end
    
print ans