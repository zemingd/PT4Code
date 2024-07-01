n, m = gets.chomp.split.map(&:to_i)
c = [0] * n
m.times {
  u, v = gets.chomp.split.map(&:to_i)
  c[u - 1] += 1
  c[v - 1] += 1
}
c.each { |x| p x }
