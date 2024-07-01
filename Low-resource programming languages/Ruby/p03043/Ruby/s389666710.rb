N, K = gets.split.map(&:to_i)

ans = 0

(1..N).each do |n|
  rate = Rational(1, N)

  while n <= K - 1
    rate *= Rational(1, 2)
    n *= 2
  end

  ans += rate
end

puts ans.to_f
