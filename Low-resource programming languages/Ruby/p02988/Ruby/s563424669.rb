n = gets.to_i
p = gets.split.map(&:to_i)
i = 2
ans = 0
while i < n
  if p[i - 2] < p[i - 1] && p[i - 1] < p[i]
    ans += 1
  elsif p[i - 2] > p[i - 1] && p[i - 1] > p[i]
    ans += 1
  end
  i += 1
end
puts ans
