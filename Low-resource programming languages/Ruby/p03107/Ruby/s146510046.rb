s = gets.chomp

counter = 0
top = 0
p1 = 0
p2 = 1

while p2 < s.length
  if s[p1] != s[p2]
    counter += 2
    s[p1] = '-'
    s[p2] = '-'
    if p1 <= top
      p1 = p2 + 1
      p2 = p2 + 2
      top = p1
    else
      p1 -= 1
      p1 -= 1 while s[p1] == '-'
      p2 += 1
    end
  else
    p1 += 1
    p1 += 1 while s[p1] == '-'
    p2 += 1
  end
end
puts counter
