a = gets.to_i
b = gets.split('')
c = []
e = b.count('E')
wn = w = 0
a.times do |i|
  if b[i] == 'E'
    e -= 1
  else
    wn = w + 1
  end
  c[i] = e + w
  w = wn
end
puts c.min
