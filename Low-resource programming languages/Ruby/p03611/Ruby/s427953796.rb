def cnt(n, a)
  num = a.count(n)
  num += a.count(n-1)
  num += a.count(n+1)
  return num
end
n = gets.to_i
a = gets.split().map(&:to_i)
a.sort!
b = a.uniq
max = 0
for c in b
  num = cnt(c, a)
  if max < num
    max = num
  end
end
puts max