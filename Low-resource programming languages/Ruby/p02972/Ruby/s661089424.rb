N = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

d = N.times.map { -1 }

(a.size - 1).downto(0).each do |i|
  k = 2
  s = 0
  while ((i + 1) * k <= N)
    s += a[(i +1) * k - 1]
    k += 1
  end
  
  if (s % 2 == a[i])
    d[i] = 0
  else
    d[i] = 1
  end
end

r = []
d.each.with_index do |dd, i|
  if dd == 1
    r << i + 1
  end
end
p r.size
if r.size > 0
  print r.join(" ")
end