n, m, l = gets.split.map(&:to_i)
a = []
b = []

n.times do
  a << gets.split.map(&:to_i)
end

m.times do
  b << gets.split.map(&:to_i)
end

bt = b.transpose

c = a.map do |row_a|
  bt.map { |row_b| row_a.zip(row_b).inject(0) { |s, e| s += e[0] * e[1] } }
end

c.each do |r|
  puts r.join("\s")
end