n = gets.to_i
ary = gets.split.map(&:to_i)

ans = 0

for i in 0 .. n - 3
  if ary[i + 1] == ary[i .. i + 2].sort[1]
    ans += 1
  end
end

puts ans
