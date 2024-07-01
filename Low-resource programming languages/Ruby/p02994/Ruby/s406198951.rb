N, L = gets.split.map(&:to_i)
A = N.times.map{|i| L + i }
d = A.min_by(&:abs)
S = A.sum
puts S - d

