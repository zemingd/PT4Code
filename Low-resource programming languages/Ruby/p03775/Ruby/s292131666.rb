n = gets.to_i

def f(a, b)
  [a.to_s.length, b.to_s.length].max
end

min = Float::INFINITY
Math.sqrt(n).round.times do |i|
  a = i + 1
  b, r = n.divmod(a)

  next unless r.zero?

  fmax = f(a, b)
  min = min > fmax ? fmax : min
end

puts min