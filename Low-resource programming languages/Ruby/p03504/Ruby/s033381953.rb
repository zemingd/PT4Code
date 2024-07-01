N,C = gets.split.map(&:to_i)

ts = []
N.times{
  s,t,c = gets.split.map(&:to_f)
  ts << [s-0.5, +1]
  ts << [t-0.1, -1]
}

ts.sort!

ans = 0
v = 0
ts.each{ |_,o|
  v += o
  ans = [ans, v].max
}
puts ans
