N,y = gets.split.map(&:to_i)
X = gets.split.map(&:to_i)
puts X.map{|x| (x - y).abs }.inject(&:gcd)