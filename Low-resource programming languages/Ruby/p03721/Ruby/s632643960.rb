n, k = gets.split().map(&:to_i)
c = Array.new()
n.times do
  a, b = gets.split().map(&:to_i)
  t = Array.new(b, a)
  c = c + t
end
c.sort!
puts c[k-1]