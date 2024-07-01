  N,K = gets.split.map(&:to_i)
  p   = gets.split.map(&:to_i)

  pExp = [] #期待値配列
  pSum = [] #期待値合計配列
  N.times do |i|
    pExp[i] = (p[i]+1) / 2.to_f
    j = i-K
    if j>=0
      pSum[j] = pExp[j,K].inject(:+)
    end
  end

  puts pSum.max