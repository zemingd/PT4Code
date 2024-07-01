s = gets.chomp!
n = s.size
q, r = n.divmod(2)
a = "10" * q + "1" * r
b = "01" * q + "0" * r
cnta, cntb = 0, 0
n.times{|i|
  cnta += 1 if a[i]!=s[i]
  cntb += 1 if b[i]!=s[i]
}
puts cnta > cntb ? cntb : cnta
