(X, N), Ps = readlines.map{_1.split.map(&:to_i)}

a, b = Ps.minmax
unless Ps.include?(X)
  puts X
else
  puts ([*a  - 1 .. b + 1] - Ps).min_by{(X - _1).abs}
end