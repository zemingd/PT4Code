n = gets.to_i
hs = gets.split.map &:to_i
ans = 1

for i in 1..(n - 1)
  hi_max = hs[0, i].max
  ans += 1 if hs[i] >= hi_max
end

puts ans
