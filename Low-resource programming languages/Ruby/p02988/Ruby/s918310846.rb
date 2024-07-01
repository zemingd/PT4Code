N = gets.to_i
p = gets.split.map(&:to_i)
cnt = 0
for i in 1...(N - 1)
  cnt += 1 if (p[i-1] < p[i] && p[i] < p[i+1]) || (p[i-1] > p[i] && p[i] > p[i+1])
end
puts cnt