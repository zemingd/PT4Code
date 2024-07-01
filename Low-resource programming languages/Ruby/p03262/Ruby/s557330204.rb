N,X = STDIN.gets.split.map(&:to_i)
x = STDIN.gets.split.map(&:to_i).map{|i| i - X}
puts x.reduce(x[0]){|a, b| a.gcd(b)}.abs
