a, b, c, d = gets.split.map(&:to_i)
foo = [b,d].min - [a,c].max
puts foo > 0 ? foo : 0