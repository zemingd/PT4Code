N = gets.to_i
S = gets.chomp

ans = 1
(1...N).each{|i|
  ans += 1 if S[i] != S[i - 1]
}

puts ans
