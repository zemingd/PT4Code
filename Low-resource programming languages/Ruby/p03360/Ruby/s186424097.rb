A = gets.split.map(&:to_i).sort
K = gets.to_i
K.times{A[2] *= 2}
puts A.inject(&:+)