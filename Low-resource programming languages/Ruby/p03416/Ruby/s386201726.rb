a, b = gets.split(" ").map{ |i| i.to_i }
ans = 0
for i in a...b do
  c = i.to_s.chars
#  p c
  cnt = 0
  for j in 0...c.length / 2 do
    if c[j] == c[c.length - j - 1]
      cnt += 1
    end
  end
  if cnt == c.length / 2
    ans += 1
  end
end

puts ans

#9/14 WA
