a = []
a = gets.split.map(&:to_i)
c = []
while s = gets
  c.push(s.split.map(&:to_i))
end
cnt = Array.new(10**5+1, 0)
for i in 0..a[0]-1
  cnt[c[i][0]] += c[i][1]
end
#p cnt[1]
total = 0
for j in 1..10**5
  total += cnt[j]
  if total >= a[1]
    puts j
    exit
  end
end
  