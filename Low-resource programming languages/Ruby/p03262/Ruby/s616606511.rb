N, X = gets.split.map(&:to_i)
x = gets.split.map(&:to_i).map{|n| (X - n).abs}
puts x.inject{|a,b| a.gcd(b)}