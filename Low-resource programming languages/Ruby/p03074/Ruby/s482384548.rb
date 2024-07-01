require "pry"
n,k = gets.split(" ").map(&:to_i)
s = gets.chomp

a = s.split('0').map(&:length)
b = s.split('1').map(&:length)
a.delete(0)
b.delete(0)

c = []
c << 0 if s[0] == '0'
while !a.empty? || !b.empty? do
  if s[0] == '1'
    c << a.shift
    c << b.shift unless b.empty?
  else
    c << b.shift
    c << a.shift unless a.empty?
  end
end
c << 0 if c.size % 2 == 0

r = [0]
c.size.times do |i|
  r[i + 1] = r[i] + c[i]
end

ans = 0
add = 2 * k + 1
0.step(by: 2, to: c.size - 1) do |i|
  left = i
  right = [(i + add), c.size].min
  tmp = r[right] - r[left]

  ans = [tmp, ans].max
end

puts ans
