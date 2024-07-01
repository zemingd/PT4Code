n = gets
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
s = 0
c = a[-1]
(b.size-1).downto(0) { |i|
  s += x = [b[i], c+a[i]].min
  c = a[i] - [c-x, 0].max
}
p s