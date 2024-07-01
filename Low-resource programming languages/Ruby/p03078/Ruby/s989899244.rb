lines = []
while line = gets
    lines << line.chomp.split(' ').map(&:to_i)
end

X = lines[0][0]
Y = lines[0][1]
Z = lines[0][2]
K = lines[0][3]

def min(x,y)
  if x > y then
    return y
  else
    return x
  end
end

cake1 = lines[1].sort.reverse
cake2 = lines[2].sort.reverse
cake3 = lines[3].sort.reverse

cand = []
for i in 1..X do
  for j in 1..Y do
    cand.push(cake1[i-1] + cake2[j-1])
  end
end

cand.sort!.reverse!

cand2 = []
for i in 1..min(K,X*Y) do
  for j in 1..Z do
    cand2.push(cand[i-1] + cake3[j-1])
  end
end
  
cand2.sort!.reverse!
  
for i in 1..K do
  puts cand2[i-1]
end