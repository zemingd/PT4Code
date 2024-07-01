ts = []
5.times { ts << gets.to_i }
l = ts.map{ |t|
  t%10 == 0 ? 0 : 10 - t%10
}
p ts.inject(:+) + l.inject(:+) - l.max
