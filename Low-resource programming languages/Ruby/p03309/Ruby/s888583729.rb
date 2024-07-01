n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

n.times do |i|
  a[i] -= i + 1
end

m = (a.size % 2).zero? ? a[a.size/2 - 1, 2].inject(:+) / 2.0 : a[a.size/2]
h1 = m.floor
h2 = m.ceil

c = []
[h1, h2].each do |hh|
  ans = 0
  a.each do |aa|
    ans += (aa - hh).abs
  end
  c.push(ans)
end
p c.min
