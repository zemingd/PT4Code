n,m = gets.chomp.split(" ").map(&:to_i)
n2 =  (1..n).to_a.combination(2).to_a.length
m2 =  (1..m).to_a.combination(2).to_a.length
puts n2+m2
