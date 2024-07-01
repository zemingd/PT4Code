gets
s = gets.strip
sl = s.length
ans = 0
(sl - 2).times do |i|
  ss = s[i, 3]
  if ss == "ABC"
    ans += 1
  end
end

puts ans
