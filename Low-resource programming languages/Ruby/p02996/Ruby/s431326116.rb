n = gets.to_i
ab = []
n.times{ab << gets.split.map(&:to_i)}
ab.sort_by!{|e| e[1]}
(n-1).times{|i| ab[i+1][0] += ab[i][0]}
puts ab.all?{|e| e[0] <= e[1]} ? "Yes" : "No"