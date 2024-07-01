N, K = gets.chomp.split(" ").map(&:to_i)
H = []
N.times{
  H << gets.to_i
}

H.sort!
ans = 10 ** 10
0.upto(N-K){|i|
  wk = H[i+K-1] - H[i]
  ans = wk if ans > wk
}

puts ans
