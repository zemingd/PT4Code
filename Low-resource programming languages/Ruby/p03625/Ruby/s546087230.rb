N = gets.to_i
A = gets.split.map(&:to_i)

F = A.inject(Hash.new(0)) {|h, x| h[x] += 1; h}.sort.reverse

E2 = F.select{|x| x[1] >= 2}.map{|x| x[0]}
E4 = F.select{|x| x[1] >= 4}.map{|x| x[0]}

a2 = E2.size >= 2 ? E2[0] * E2[1] : 0
a4 = E4.size >= 1 ? E4[0] **2 : 0

puts [a2, a4].max

