n, l = gets.split.map(&:to_i)

a = (l..(l + n -1)).to_a
p1 = (l + (l + n - 1)) * n / 2

min = 999999
a.each do |x|
  min = x if x.abs() < min.abs
end

puts p1 - min