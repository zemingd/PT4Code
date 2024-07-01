n, k = gets.split.map(&:to_i)
ans  = 0
cnt  = 0
aryC = Array.new(1e5 + 10, 0)

n.times do
  a, b = gets.split.map(&:to_i)
  aryC[a] += b
end

i = 0
while cnt < k
  cnt += aryC[i]
  ans  = i
  i   += 1
end

puts ans
