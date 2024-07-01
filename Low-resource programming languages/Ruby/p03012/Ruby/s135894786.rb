lines = []
while line = gets
    lines << line.chomp.split(' ').map(&:to_i)
end

N = lines[0][0]

sum = 0
for i in 1..N do
  sum += lines[1][i-1]
end

def abs(x)
  if x > 0 then
    return x
  else
    return -x
  end
end

submin = 10 ** 20
sub1 = 0
for i in 1..N-1 do
  sub1 += lines[1][i-1]
  sub2 = sum - sub1
  sub = abs(sub1 - sub2)
  if sub < submin then
    submin = sub
  end
end
  
print submin