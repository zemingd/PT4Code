N, K = gets.split(' ').map(&:to_i)

puts((1.upto(N).map {|i|
  try = Math.log2(1.0 * K / i).ceil
  try > 0 ? (Rational(1, 2) ** try) : Rational(1,1)
}.sum / N).to_f)
