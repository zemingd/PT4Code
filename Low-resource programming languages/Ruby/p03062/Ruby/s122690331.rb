n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
b = []
c = 1
for x in 0..n - 1
  b << a[x].abs
  if a[x] != a[x].abs
    c = c * -1
  end
end
if c < 0
  puts b.inject(:+) - b.min * 2
else
  puts b.inject(:+)
end
