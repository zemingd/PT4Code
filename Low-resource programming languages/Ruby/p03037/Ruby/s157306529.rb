n, m = gets.split.map(&:to_i)
l, r = m.times.map {|i|
  gets.split.map(&:to_i)
}.transpose
p r.min - l.max + 1