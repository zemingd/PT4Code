n,m,l = gets.split.map(&:to_i)
a = n.times.map { gets.split.map(&:to_i) }
b = m.times.map { gets.split.map(&:to_i) }
c = Array.new(n) { Array.new(l) { 0 } }
n.times do |i|
  l.times do |j|
    m.times do |k|
      c[i][j] += a[i][k] * b[k][j] 
    end
  end
end
c.each { |v| puts v * ' ' }