gets
p = gets.split.map(&:to_i)
q = gets.split.map(&:to_i)
ps = p.sort
qs = q.sort
puts (ps.permutation(p.size).find_index(p) - qs.permutation(p.size).find_index(q)).abs
