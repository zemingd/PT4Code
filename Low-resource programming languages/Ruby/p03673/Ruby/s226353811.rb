N = gets.to_i
a = gets.split.map(&:to_i)

b = []

(N - 1).step(0, -2) do |i|
  b << a[i]
end

sp = 0
if N.odd?
  sp = 1
end

sp.step(N - 1, 2) do |i|
  b << a[i]
end

puts b.join(' ')

