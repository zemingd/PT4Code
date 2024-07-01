r = []
for c in (0..255)
  r[c] = 0
end
gets.downcase.bytes { |c| r[c] += 1 }
for c in ('a'..'z')
  print c, " : ", r[c.ord], "\n"
end