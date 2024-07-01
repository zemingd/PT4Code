gets.to_i
A = gets.chomp.split(" ").map(&:to_i)

C = Hash.new{|h, k| h[k] = 0}
A.each{|a| C[a] += 1}
tmp = C.keys.sort
ans = tmp.map{|a| C[a-1] + C[a] + C[a+1]}

puts ans.max
