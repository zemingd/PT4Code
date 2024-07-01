lines = []
while line = gets
    lines << line.chomp.split(' ').map(&:to_i)
end

N = lines[0][0]

num_arrival = []
for i in 1..N do
  num_arrival.push(0)
end

for i in 1..N do
  num_arrival[lines[1][i-1]-1] = i
end

ans = ""
for i in 1..N do
  ans += num_arrival[i-1].to_s + " "
end
print ans