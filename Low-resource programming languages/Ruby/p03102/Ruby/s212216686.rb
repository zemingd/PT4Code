N, M, C = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)
A = N.times.map { gets.split.map(&:to_i) }

ans = 0

A.each do |a|
  s = a.zip(B).inject(0) { |res, (i, j)| res + (i * j) }

  ans += 1 if s + C > 0
end

puts ans
