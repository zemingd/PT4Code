include Math

n, k = gets.split.map(&:to_f)
ans  = 0

for i in 1 .. n
  ans += 1 / (2.0 ** ((log(k / i, 2)).ceil)) / n
end

puts ans
