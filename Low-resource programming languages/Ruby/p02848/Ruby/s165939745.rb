N = gets.to_i
S = gets.chomp
n = ""
(N...S.length).each{|i|
  n = n + S[i]
}
(0...N).each{|i|
  n = n + S[i]
}
puts n