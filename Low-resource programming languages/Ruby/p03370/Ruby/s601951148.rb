n, x = gets.split.map &:to_i
m = []
n.times{
  t = gets.to_i
  m << t
  x -= t
}

p n + x / m.min