n, k = gets.chomp.split.map(&:to_i)
c = []
n.times {
  a, b = gets.chomp.split.map(&:to_i)
  c = c + [a] * b
  c.sort!
  c = c[0..k]
}
p c[k - 1]
