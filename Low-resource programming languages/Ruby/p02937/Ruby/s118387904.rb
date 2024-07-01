S = gets.chomp
T = gets.chomp
idx = {}
(0...S.size).each{ |i|
  idx[S[i]] ||= []
  idx[S[i]] << i
}
idx.values.each{ |xs| xs << xs[-1] + S.size }
ans = 0
j = 0
T.chars.each{ |c|
  xs = idx[c]
  if !xs
    p -1; exit
  end
  k = xs.bsearch{ |k| k >= j }
  ans += k - j
  j = k % S.size
}
p ans + 1
