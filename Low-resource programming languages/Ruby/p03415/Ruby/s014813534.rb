n = []
for a in 0..2
  n << gets.chomp
end
res = ""
for b in 0..2
  res = res + n[b][b, 1]
end
puts res
