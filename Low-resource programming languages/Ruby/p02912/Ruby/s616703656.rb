n = gets.to_i
s = gets.chomp
ans = 0
l, r = 0, 0
while r < n
  subst = s[l..r]
  rest = s[r + 1..-1]
  if rest[subst]
    ans = subst.size if subst.size > ans
    r += 1
  else
    l += 1
    r += 1
  end
end
p ans
