n = gets.chomp
a_p = gets.chomp.split(' ')

t = 0
c = 0
(n.to_i - 2).times do
  a = a_p[t..(t + 2)]
  c += 1 if a[1] == a.sort[1]
  t += 1
end
print c
