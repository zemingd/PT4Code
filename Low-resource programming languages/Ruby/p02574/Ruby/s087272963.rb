pc = "pairwise coprime"
sc = "setwise coprime"
nc = "not coprime"
n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)
puts a.combination(2).map{|i,j|i.gcd(j)}.all?{|k|k==1} ? pc : a.inject(a[0]){|acc,e|acc.gcd(e)} == 1 ? sc : nc
