n,x = gets.split.map(&:to_i)
xs = gets.split.map(&:to_i)
p xs.map{|y|(y-x).abs}.reduce(&:gcd)
