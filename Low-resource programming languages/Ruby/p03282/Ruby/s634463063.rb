S = gets.chomp
K = gets.to_i

wk = 0
(0...S.size).each{|i|
  (wk = i; break) if S[i] != '1'
}

puts wk < K ? S[wk] : '1'
