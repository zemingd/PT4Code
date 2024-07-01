A, B, C, X = 4.times.map{gets.to_i}
T = A + B + C

p (0..A).inject(0){|sum, i|
    (0..B).map {|j| sum += 1 if ((X - 500*i - 100*j) / 50).between?(0, C)}
    sum
}