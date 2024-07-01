a, b, c = gets.chomp.split(' ').map(&:to_i)
k = gets.to_i

puts [a*2**k + b + c, a + b*2**k + c, a + b + c*2**k].max
