N,M = gets.split.map(&:to_i)
L,R = readlines.map {|s| s.split.map(&:to_i) }.transpose
puts (L.max..R.push(N).min).size