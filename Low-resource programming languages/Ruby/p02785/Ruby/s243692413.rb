lines = []
while line = gets
    lines << line.chomp.split(' ').map(&:to_i)
end

N = lines[0][0]
K = lines[0][1]

hp = lines[1].sort.reverse

for i in 1..K do
  hp[i-1] = 0
end

num_attack = 0
for i in 1..N do
  num_attack += hp[i-1]
end

print num_attack