gets.to_i
X = gets.chomp.split(" ").map(&:to_i).sort

ans = 10 ** 6
(X[0]..X[-1]).each{|m|
  wk = X.inject(0){|r, x|
    r + (x - m) ** 2
  }
  ans = wk if ans > wk
}

puts ans
