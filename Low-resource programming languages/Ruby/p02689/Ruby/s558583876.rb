N, M = gets.chomp.split(" ").map(&:to_i)
H = gets.chomp.split(" ").map(&:to_i)
E = Array.new(N+1).map{Array.new}
M.times{
  a, b = gets.chomp.split(" ").map(&:to_i)
  E[a] << b
  E[b] << a
}

H.unshift(0)
puts (1..N).count{|i|
  wk = E[i].map{|e| H[e]}.max
  wk.nil? || wk < H[i]
}
