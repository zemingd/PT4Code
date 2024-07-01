n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)

s = a.inject(&:+)
b = []
(0..(n - 2)).each do |i|
  s -= a[i] * 2
  b << s.abs
end

puts b.min
