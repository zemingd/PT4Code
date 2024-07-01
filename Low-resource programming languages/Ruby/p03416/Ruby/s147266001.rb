a,b = gets.chomp.split(' ').map(&:to_i)
ans = 0
while a < b
  s = a.to_s.chars
  if s[0] == s[4] && s[1] == s[3]
    ans += 1
  end
  a += 1
end
puts ans