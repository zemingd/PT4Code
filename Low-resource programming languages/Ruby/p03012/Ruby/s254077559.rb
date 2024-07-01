n = gets.chomp.to_i
ary = gets.split(' ').map(&:to_i)

min = Float::INFINITY
n.times do |i|
    a = ary[0..i]
    b = ary[i+1..ary.length-1]
    tmp = (a.sum - b.sum).abs
    min = tmp if min > tmp
end

print min