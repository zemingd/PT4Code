N,D = gets.split.map(&:to_i)
X = N.times.map{gets.split.map(&:to_i)}

count = 0
X.combination(2){|a,b|
  d = D.times.map{|n| (a[n] - b[n])**2}.inject(:+)
  count += 1 if (d**0.5) % 1 == 0
}

p count