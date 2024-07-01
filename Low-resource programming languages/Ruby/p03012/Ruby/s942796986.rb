N = gets.to_i
W = gets.chomp.split.map(&:to_i)

p (0..N-2).map{|i|
    a = (0..i).inject(0){|sum, j| sum + W[j]}
    b = (i+1..N-1).inject(0){|sum, k| sum + W[k]}
    (a - b).abs
}.min