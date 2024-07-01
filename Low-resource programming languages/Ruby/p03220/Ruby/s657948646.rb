  g=proc{gets.split.map &:to_i}
  n = gets.to_i
  t, a =g.call
  h = g.call
  w = []
  h.each do |i|
    w << (a - (t - i)).abs.to_i
  end
  p w.index(w.min) + 1