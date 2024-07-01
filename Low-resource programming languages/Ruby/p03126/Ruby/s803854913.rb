N,M = gets.split.map &:to_i
h = Array.new(M,0)
N.times{ gets.split.map(&:to_i)[1..-1].each{ |a| h[a-1] += 1 } }
p h.count(N)