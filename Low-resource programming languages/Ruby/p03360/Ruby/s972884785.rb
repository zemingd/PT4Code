a, b, c = gets.split.map(&:to_i)
k = gets.to_i

s = [a, b, c]
m = s.max
s.delete_at(s.index(m))

puts s.inject(&:+) + m*2**k
