n, k = gets.split.map(&:to_i)

probability = 0
(1..n).each do |i|
  cnt = Math.log((k / i).to_f, 2).ceil
  puts cnt
  probability += Rational(1, (2 ** cnt))
  puts probability
end

puts (probability / n).to_f