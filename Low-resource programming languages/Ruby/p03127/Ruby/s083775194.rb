N = gets.to_i
A = gets.split.map(&:to_i)
puts A.inject{|a,b| a.gcd(b)}
