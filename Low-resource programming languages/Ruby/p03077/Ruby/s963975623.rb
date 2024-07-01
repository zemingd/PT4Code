ary = []
ary[0] = gets.to_i
5.times do
  ary << (gets.to_i / ary[0].to_f).floor
end
ans = ary[1]
for i in 2 .. 5
  if ary[i - 1] >= ary[i]
    ans += 1
  else
    ans += ary[i] - ary[i - 1] + 1
  end
end

puts ans
