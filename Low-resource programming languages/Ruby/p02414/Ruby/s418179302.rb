n,m,l = gets.split(" ").map(&:to_i)
a = []
b = []
n.times do
  a<<gets.split(" ").map(&:to_i)
end
m.times do
  b<<gets.split(" ").map(&:to_i)
end
bt = b.transpose
n.times do |i|
  c = []
  l.times do |j|
    c<<[a[i],bt[j]].transpose.map{|t| t.inject(:*)}.inject(:+)
  end
  puts c.join(" ")
end