N = gets.to_i
S = gets.chomp
K = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
n = ""
(0...S.length).each{|i|
  n = n + K[(K.index(S[i]).to_i + N) % 26]
}
puts n