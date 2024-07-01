N, K = gets.split.map(&:to_i)
H = gets.split.map(&:to_i)

l = H.sort.reverse.drop(K)
cnt = l.inject(0) {|s, a| s + a }

puts cnt