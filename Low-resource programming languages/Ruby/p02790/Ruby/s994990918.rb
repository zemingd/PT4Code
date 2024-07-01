a,b=gets.split.map &:to_i
puts (a == b ? a.to_s * b : a > b ? b.to_s * a : a.to_s * b)
