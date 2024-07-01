n, k = gets.split().map(&:to_i)
c = Array.new()
n.times do
  a, b = gets.split().map(&:to_i)
  b.times do
    c << a
  end
end
c.sort!
puts c[k-1]