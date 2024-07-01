r = []
for c in (0..255)
  r[c] = 0
end
while(s=gets)
  s.downcase.bytes { |c| r[c] += 1 }
end
for c in ('a'..'z')
  #print c, " : ", r[c.ord], "\n"  # ruby1.9
  print c, " : ", r[c[0]], "\n"  # ruby1.8
end