n,m,l = gets.split(" ").map(&:to_i)
a = []
b = []
c = Array.new(n).map{Array.new(l,0)}
n.times do
  a<<gets.split(" ").map(&:to_i)
end
m.times do
  b<<gets.split(" ").map(&:to_i)
end
bt = b.transpose
n.times do |i|
  l.times do |j|
    c[i][j] = [a[i],bt[j]].transpose.map{|t| t.inject(:*)}.inject(:+)
  end
end
puts c.map{|r| r.join(" ")}