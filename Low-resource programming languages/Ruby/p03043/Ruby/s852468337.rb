line = gets.split(' ')

N = line[0].to_i
K = line[1].to_i

ans = 0.0
for i in 1..N do
  prob = 1.0 / N
  current = i
  while current < K do
    current *= 2
    prob /= 2
  end
  ans += prob
end
puts ans