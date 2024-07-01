n, m = gets.split.map(&:to_i)
ks = []
m.times do
  ks.push gets.split.map(&:to_i)
end
p = gets.split.map(&:to_i)
c = []
ks.each_index do |i|
  k = ks[i][0]
  s = ks[i][1..-1]
  b = 0
  s.each do |f|
    b += (1 << (f - 1))
  end
  c.push [b, p[i]]
end
def bitcount(n)
  c = 0
  while n > 0
    c += 1 if (n & 1) == 1
    n /= 2
  end
  c
end
count = 0
0.upto(2**n - 1) do |b|
  flag = false
  0.upto(m - 1) do |i|
    if bitcount(c[i].first & b) % 2 != c[i].last
      flag = true
      break
    end
  end
  next if flag

  count += 1
end
puts count
