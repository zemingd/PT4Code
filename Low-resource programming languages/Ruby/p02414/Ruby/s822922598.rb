n, m, l = gets.split.map(&:to_i)

a = []
n.times do
  a << gets.split.map(&:to_i)
end

b = []
m.times do
  b << gets.split.map(&:to_i)
end

c = Array.new(n).map{Array.new(l).map{0}}
n.times do |i|
  m.times do |k|
    l.times do |j|
      c[i][j] += a[i][k] * b[k][j]
    end
  end
end

puts c.map{|_| _.join(" ")}.join("\n")

