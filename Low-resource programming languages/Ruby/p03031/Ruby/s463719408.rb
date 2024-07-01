n, m = gets.split.map(&:to_i)
s = m.times.map { _, *s = gets.split.map(&:to_i); s }
p = gets.split.map(&:to_i)

puts 0.upto(2**n - 1).count { |i|                                                                                                                                                                                                                                             
  b = 0.upto(n-1).map { |j| (i / 2**j) % 2 == 0 }
  m.times.all? { |j| (s[j].count { |k| b[k-1] }) % 2 == p[j] }
}