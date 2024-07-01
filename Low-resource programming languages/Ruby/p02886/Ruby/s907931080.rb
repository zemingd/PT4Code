i = gets.chomp.to_i
ary = gets.split(" ").map(&:to_i)
sum = 0
ary.combination(2) {|a,b| sum += a*b }
p sum