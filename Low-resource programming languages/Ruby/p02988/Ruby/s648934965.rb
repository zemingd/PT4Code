n = gets.chomp.to_i
p = gets.chomp.split.map(&:to_i)
ans = 0
for i in 1..p.length - 2
  if p[i - 1] > p[i] && p[i] >= p[i + 1] ||
     p[i - 1] <= p[i] && p[i] < p[i + 1]
    ans += 1
  end
end
puts ans
