n, m = gets.chomp.split.map(&:to_i)
pt = Array.new(m + 1, 0)
cnt = 0
while ln = gets
  a = ln.chomp.split.map(&:to_i)
  for i in 1..a[0]
    pt[a[i]] += 1
  end
end
for i in 1..m
  if pt[i] == n
    cnt += 1
  end
end
puts cnt
   