a, b, c, d, e, f = gets.split.map(&:to_i)
x = []
y = []

0.upto(3000 / (100 * a)) do |i|
  0.upto(3000 / (100 * b)) do |j|
    x << 100 * a * i + 100 * b * j
  end
end

0.upto(3000 / c) do |i|
  0.upto(3000 / d) do |j|
    y << c * i + d * j
  end
end

x = x.reject { |e| e > f }.uniq.sort
y = y.reject { |e| e > f }.uniq.sort
h = {}

x.each do |i|
  y.each do |j|
    next if i / 100.0 * e < j || i + j > f

    h[[i, j]] = 100.0 * j / (i + j) unless i == 0 && j == 0
  end
end

u, v = h.sort_by { |k, v| -v }[0][0]

puts "#{u + v} #{v}"