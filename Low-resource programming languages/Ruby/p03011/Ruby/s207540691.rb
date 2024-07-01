p, q, r = gets.split.map &:to_i
p([ p+q, q+r, r+p ].min)
