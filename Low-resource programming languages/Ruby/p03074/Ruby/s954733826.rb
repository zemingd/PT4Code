n,k = gets.split(" ").map(&:to_i)
s = gets.chomp

a = s.split('0').map(&:length)
b = s.split('1').map(&:length)
a.delete(0)
b.delete(0)

c = []
c << 0 if s[0] == '0'
while !a.empty? || !b.empty? do
  c << a.shift unless a.empty?
  c << b.shift unless b.empty?
end

r = [0]
c.size.times do |i|
  r[i + 1] = r[i] + c[i]
end

ans = 0

0.step(by: 2, to: c.size) do |i|
  left = i
  right = [(i + 2 * k + 1), c.size].min
  tmp = r[right] - r[left]

  ans = [tmp, ans].max
end
puts ans
