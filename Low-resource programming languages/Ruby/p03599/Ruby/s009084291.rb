a, b, c, d, e, f = gets.split.map(&:to_i)
x = []
y = []

0.upto(30) do |i|
  0.upto(30) do |j|
    tmp = 100 * a * i + 100 * b * j
    x << tmp if tmp <= f
    tmp = c * i + d * j
    y << tmp if tmp <= f
  end
end

x.uniq!
x.sort!
y.uniq!
y.sort!
h = {}

x.each do |i|
  y.each do |j|
    next if i / 100.0 * e < j
    next if i + j > f
    h[[i, j]] = 100.0 * j / (i + j) unless i == 0 && j == 0
  end
end

u, v = h.sort_by { |k, v| -v }[0][0]

puts [u + v, v].join(' ')