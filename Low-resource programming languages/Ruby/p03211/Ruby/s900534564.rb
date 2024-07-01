S = gets.chomp

ans = 1000
0.upto(S.size-3){|i|
  wk = (S[i, 3].to_i - 753).abs
  ans = wk if ans > wk
}

puts ans
