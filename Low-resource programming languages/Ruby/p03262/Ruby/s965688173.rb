def gcd(s, t)
  gcd(t, s) if t > s
  return t if (r = s % t).zero?
  gcd(t, r)
end


N, X = gets.split.map(&:to_i)
x = gets.split.map(&:to_i)

a = []
a << (X-x[0]).abs

(N-1).times do |i|
	a << (x[i].to_i-x[i+1].to_i).abs
end

g = a[0]

(N-1).times do |i|
	g = gcd(g, a[i+1])
end

puts g
