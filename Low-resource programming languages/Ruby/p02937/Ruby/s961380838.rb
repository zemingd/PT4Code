S = gets.chomp
T = gets.chomp
idx = {}
S.chars.each_with_index{ |c,i|
  idx[c] ||= []
  idx[c] << i
}
idx.values.each{ |xs| xs << xs[0] + S.size }
ans = 0
j = 0
T.chars.each{ |c|
  xs = idx[c]
  if !xs
    p -1; exit
  end
  x = xs.bsearch{ |k| k >= j } + 1
  ans += x - j
  j = x % S.size
}
p ans
