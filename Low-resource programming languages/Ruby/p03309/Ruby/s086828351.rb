n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

n.times do |i|
  a[i] -= i + 1
end

h = a.inject(:+) / n.to_f
h1 = h.floor
h2 = h.ceil

aa = []
[h1, h2].each do |hh|
  ans = 0
  a.each do |aa|
    ans += (aa - hh).abs
  end
  aa.push(ans)
end
p aa.min
