n, m, c = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)
z = 0
n.times do |i|
  a = gets.chomp.split.map(&:to_i)
  s = c
  m.times do |j|
    s += a[j] * b[j]
  end
  z += 1 if s > 0
end
p z