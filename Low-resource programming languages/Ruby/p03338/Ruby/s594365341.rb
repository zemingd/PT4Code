gets
S = gets.chomp

ans = 0
for i in 1..(S.length-1)
  s1 = S[0, i]
  s2 = S[i..-1]
  #p i: i, s1: s1, s2: s2
  c1 = s1.chars.uniq
  c2 = s2.chars.uniq
  ans = [ans, (c1 & c2).length].max
end
p ans