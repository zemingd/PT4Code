n = gets.chomp.to_i
ary = gets.split(' ').map(&:to_i)
 
a = 0
b = ary.inject{|sum, n| sum + n}
min = b
 
n.times do |i|
    tmp = (a - b).abs
    min = tmp if min > tmp
    c = ary[i]
    a += c
    b -= c
end