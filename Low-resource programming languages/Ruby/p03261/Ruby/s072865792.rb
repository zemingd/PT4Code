N = gets.to_i
W = N.times.map {gets.chomp}

con1 = W == W.uniq
con2 = (0...N-1).inject([]) {|a, i| a << [W[i][-1], W[i+1][0]]}.all? {|a, b| a == b}
puts [con1, con2].all? ? "Yes" : "No"