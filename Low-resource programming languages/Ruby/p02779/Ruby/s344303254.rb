N = gets
A = gets.split.map &:to_i
puts A.size == A.uniq.size ? :YES : :NO