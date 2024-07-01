n = gets.to_i
p = gets.chomp.split(" ", n).map(&:to_i)
q = gets.chomp.split(" ", n).map(&:to_i)

aaa = n.times.map{|i| i + 1}.permutation(n).to_a
pp = aaa.find_index{|a| a==p}
qq = aaa.find_index{|a| a==q}
ans = (pp - qq).abs
p ans