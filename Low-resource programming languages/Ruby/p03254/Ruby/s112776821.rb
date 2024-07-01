n, x = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i).sort!
res = 0
while res < a.length && x > 0
  x -= a[res]
  res += 1
end
res -= 1 if x != 0
puts res