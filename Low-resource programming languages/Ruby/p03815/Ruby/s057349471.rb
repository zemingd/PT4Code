s = gets.chomp.to_i
c = 0
c += s / 11 * 2
s %= 11
if(s > 0)
  c+=1
  s-=6
end
if(s > 0)
  c+=1
  s-=5
end
p c