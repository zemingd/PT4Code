io = STDIN
n=io.gets.to_i
P=io.gets.split.map(&:to_i)
Q=io.gets.split.map(&:to_i)
ar=(1..n).to_a.permutation.to_a
puts (ar.index(P)-ar.index(Q)).abs
