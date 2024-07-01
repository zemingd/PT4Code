N, X = gets.split.map(&:to_i)
Xs = gets.split.map(&:to_i)

puts Xs.map{|x| (X - x).abs}.inject(&:gcd)