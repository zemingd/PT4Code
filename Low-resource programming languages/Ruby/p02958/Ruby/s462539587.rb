N = gets.to_i
Ps = gets.split.map(&:to_i)

(a, b), (c, d) = *Ps.map.with_index(1).select{|x, y| x != y}
puts (a == d && b == c) ? 'YES' : 'NO'