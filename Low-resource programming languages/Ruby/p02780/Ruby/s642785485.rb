N,K = gets.split.map(&:to_i)
P = gets.split.map(&:to_i).each_cons(K).max_by {|a| a.inject(:+) }
puts P.inject(0) {|r,n| r + n*(n+1)/2 / n.to_f }