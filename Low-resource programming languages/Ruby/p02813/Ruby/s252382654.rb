n = gets.to_i
p = gets.split(" ").map(&:to_i)
q = gets.split(" ").map(&:to_i)

def fact(n)
  (1..n).to_a.inject(1) { |f, i| f * i }
end

a = 0
z = (1..n).to_a
(0..(n - 2)).each do |i|
  a += z.index(p[i]) * fact(n - i - 1)
  z.delete(p[i])
end

b = 0
z = (1..n).to_a
(0..(n - 2)).each do |i|
  b += z.index(q[i]) * fact(n - i - 1)
  z.delete(q[i])
end

puts (a - b).abs