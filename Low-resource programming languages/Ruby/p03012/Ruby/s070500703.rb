n = gets.chomp.to_i
ary = gets.split(' ').map(&:to_i)

min = Float::INFINITY

a = 0
b = ary.sum
n.times do |i|
    tmp = (a - b).abs
    min = tmp if min > tmp
    c = ary[i]
    a += c
    b -= c
end

print min