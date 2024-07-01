N, K = gets.split(" ").map(&:to_i)
h = gets.split(" ").map(&:to_i)
H = h.sort
r = 0
(0...N-K).each{|i|
  r = r + H[i]
}
puts r