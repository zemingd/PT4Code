def r;gets.split.map &:to_i;end
N = gets
A = r
puts A.inject(&:gcd)