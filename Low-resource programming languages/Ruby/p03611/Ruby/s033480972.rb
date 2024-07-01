N = gets.to_i
As = gets.split.map(&:to_i)

h= Hash[As.sort.chunk(&:itself).map{|n, a| [n, a.size]}]
h.default = 0
puts Range.new(*h.keys.minmax).map{|n| h[n - 1] + h[n] + h[n + 1]}.max