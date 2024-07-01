N = gets.to_i
A = gets.split.map(&:to_i)
G = A.each_with_object(Hash.new(0)) {|a,h| h[a] += 1 }

mem = {}
m = -> n { mem[n] ||= (n*(n-1))/2 }
total = G.inject(0) {|r,(k,v)| r + m[v] }
A.each {|a| puts total - m[G[a]] + m[G[a]-1] }
