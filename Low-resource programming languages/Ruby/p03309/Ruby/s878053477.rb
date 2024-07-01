n = gets.to_i
a = gets.chomp.split.map(&:to_i)

n.times do |i|
  a[i] -= i + 1
end
a.sort!

b = [a[n / 2]]
res = []
if n % 2 == 0
  b << a[n / 2 - 1]
end
puts b.map {|x| a.inject(0) {|acc, y| acc + (y - x).abs } }.min