n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort.reverse
t = Array.new
t << (a.shift >> 1)
m -= 1
while m > 0
  t << (a.empty? || a[0] < t[0] ? t.shift >> 1 : a.shift >> 1)
  m -= 1
end
puts (a + t).inject(&:+)
