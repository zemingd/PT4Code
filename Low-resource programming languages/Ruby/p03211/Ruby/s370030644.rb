
DBG =  true
s = gets.chomp!
n = s.size
mindif = 999
for i in 0..(n-3)
  x = s[i..(i+2)].to_i
  dif = (x - 753).abs
  mindif = dif if dif < mindif
end
print mindif
