lines = []
while line = gets
    lines << line.chomp.split(' ').map(&:to_i)
end

N = lines[0][0]

num = []
for i in 1..10**5 do
  num.push(0)
end

sum_num = 0
for i in 1..N do
  n = lines[1][i-1]
  num[n-1] += 1
  sum_num += n
end

Q = lines[2][0]
for i in 1..Q do
  bi = lines[i+2][0]
  ci = lines[i+2][1]
  sum_num += (ci - bi) * num[bi-1]
  num[ci-1] += num[bi-1]
  num[bi-1] = 0
  puts sum_num
end