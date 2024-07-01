n, m, l = gets.split.map(&:to_i)

a, b = [], []

c = Array.new(n) { Array.new(l) { 0 } }

n.times do
  row = gets.split.map(&:to_i)
  a << row
end

m.times do
  row = gets.split.map(&:to_i)
  b << row
end

n.times do |i|
  l.times do |j|
    m.times do |k|
      c[i][j] += a[i][k] * b[k][j]
    end
  end
  puts c[i].join(' ')
end