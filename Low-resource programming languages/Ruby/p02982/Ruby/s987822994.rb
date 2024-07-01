N, D = gets.chomp.split.map(&:to_i)
X = N.times.map{gets.chomp.split.map(&:to_i)}

p X.combination(2).count{|a, b|
    d = (0...D).inject(0){|sum, i| sum += (a[i] - b[i]) ** 2} ** 0.5
    d == d.round
}