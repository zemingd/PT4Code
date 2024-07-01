lines = []
while line = gets
    lines << line.chomp.split(' ').map(&:to_i)
end

N = lines[0][0]
mal = lines[1].sort
limit = 10 ** 18

ans = 1
for i in 1..N do
  ans *= mal[i-1]
  if ans > limit then
    ans = -1
    break
  end
end

print ans