include Math

n, d = gets.split.map(&:to_i)
dots = []

n.times do
  dots << gets.split.map(&:to_i)
end

ans = 0

for i in 0 .. n - 2
  for j in i + 1 .. n - 1
    dist = 0
    for k in 0 .. d - 1
      dist += (dots[i][k] - dots[j][k]) ** 2
    end
    if sqrt(dist) == (sqrt(dist)).to_i
      ans += 1
    end
  end
end

puts ans
