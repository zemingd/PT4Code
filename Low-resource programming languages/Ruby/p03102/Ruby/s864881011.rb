N, M, C = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)
A = N.times.map { gets.split.map(&:to_i) }
outcomes = A.map { |a| [a, B].transpose.inject(0) {|sum, a_| sum + a_[0] * a_[1] } + C }
puts outcomes.count{ |o| o > 0 }
