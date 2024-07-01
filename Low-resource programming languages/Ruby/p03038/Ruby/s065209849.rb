n, m = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
a.sort!
total = a.sum
h = Hash.new(0)
a.each { h[_1] += 1 }
d = []
m.times do
  b, c = gets.chomp.split.map(&:to_i)
  b.times { d << c }
end
d.sort!.reverse!
[d.size, n].min.times do |i|
  break if a[i] > d[i]

  total = total + d[i] - a[i]
end

puts total
