n, l = gets.split.map(&:to_i)

aji = []
(1..n).each{ |i| aji.push(l + i -1) }

foo = 10 ** 5
for var in aji do
    foo = var if var.abs < foo.abs
end
aji.delete(foo)

puts aji.inject(:+)