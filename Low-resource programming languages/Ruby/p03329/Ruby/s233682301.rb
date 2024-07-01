N = gets.to_i

ans = 10 ** 5
0.upto(N){|n|
  wk = n.to_s(6).chars.map(&:to_i).inject(:+) + (N-n).to_s(9).chars.map(&:to_i).inject(:+)
  ans = wk if ans > wk
}

puts ans
