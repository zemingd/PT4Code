require 'bigdecimal'
 
N, K = gets.chop.split.map(&:to_i)
 
@sum = 0
 
(1..N).to_a.each do |i|
  now = i
  probability = Rational(1, N)
  while now < K do
    now *= 2
    probability *= Rational(1, 2)
  end
  @sum += probability
end
 
puts @sum.to_f