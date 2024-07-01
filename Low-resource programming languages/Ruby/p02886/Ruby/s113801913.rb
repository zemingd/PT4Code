lines = []
while line = gets
    lines << line.chomp.split(' ').map(&:to_i)
end

N = lines[0][0]

ans = 0
for i in 1..(N-1) do
  for j in (i+1)..N do
    ans += lines[1][i-1] * lines[1][j-1]
  end
end

print ans