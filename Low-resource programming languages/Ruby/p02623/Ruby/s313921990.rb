N, M, K = gets.split.map &:to_i
a = gets.split.map &:to_i
b = gets.split.map &:to_i
i,j =0,0
time = 0
a[N] = Float::INFINITY
b[M] = Float::INFINITY
(N+M).times do
  if a[i] < b[j]
    time += a[i]
    break if time > K
    i += 1
  else
    time += b[j]
    break if time > K
    j += 1
  end
end

puts i + j
