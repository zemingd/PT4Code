gets
h = {}
a = gets.scan(/./)
a.each {|e| h[e] = (h[e]||0) + 1 }
x = m = 0
a.reverse_each {|e|
  if h[e] > 0
    x += 1
    h[e] *= -1
  end
  x -= 1  if 0 == h[e] += 1
  m = x  if m < x
}
p m