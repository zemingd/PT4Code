N,D = gets.split.map(&:to_i)
X = N.times.map{gets.split.map(&:to_i)}

count = 0
(N-1).times {|i|
  (i+1).upto(N-1) {|j|
    d = D.times.map{|n| (X[i][n] - X[j][n])**2}.inject(:+)
    count += 1 if (d**0.5) % 1 == 0
  }
}

p count