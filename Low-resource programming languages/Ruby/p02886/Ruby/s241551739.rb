n = gets.chomp.to_i
d = gets.chomp.split(' ').map(&:to_i)
d_sum = d.combination(2).to_a.map{ |i| i.reduce(:*) }.reduce(:+)
print d_sum
