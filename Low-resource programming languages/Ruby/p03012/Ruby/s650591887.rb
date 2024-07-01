N = gets.to_i
W = gets.split.map &:to_i
l = 0
r = W.inject:+
p W[0..-2].map{|w|
  l += w
  r -= w
  (l - r).abs
}.min