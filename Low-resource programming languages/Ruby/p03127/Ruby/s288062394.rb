N, A = gets, gets.split.map(&:to_i)
p A.inject {|a, b| a.gcd(b) }