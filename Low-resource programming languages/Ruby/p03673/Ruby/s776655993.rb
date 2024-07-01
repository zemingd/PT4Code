n = gets.to_i
a = gets.split.map(&:to_i)

b = []
n.step(1, -2) do |i|
  b << a[i - 1]
end

(n.odd? ? 2 : 1).step(n, 2) do |i|
  b << a[i - 1]
end

puts b.join(" ")
