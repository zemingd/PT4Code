gets
c = l = m = 0
gets.split.each { |e|
  e = e.to_i
  if l < e
    m = c  if c > m
  else
    c += 1
  end
  l = e
  }
p (c > m ? c : m)