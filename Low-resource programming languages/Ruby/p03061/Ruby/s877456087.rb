_ = STDIN.gets.split.map(&:to_i)
a = STDIN.gets.split.map(&:to_i)

p a.permutation(2).map {|v1, v2| v1.gcd(v2)}.max
