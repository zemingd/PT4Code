N, K = gets.chomp.split(' ').map(&:to_i)
P = gets.chomp.split(' ').map { |p_i| Rational((p_i.to_i * (p_i.to_i + 1) / 2), p_i.to_i) }

s = []
s[0] = Rational(0)
N.times do |i|
  s[i + 1] = P[i] + s[i]
end

e = []
(K..N).each do |i|
  e[i] = s[i] - s[i - K]
end
puts e.compact.max.to_f
