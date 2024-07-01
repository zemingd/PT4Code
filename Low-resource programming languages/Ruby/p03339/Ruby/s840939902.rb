n = gets.to_i
s = gets.chars

lw = []
re = []

w = 0
n.times do |i|
  lw[i] = w
  w += 1 if s[i] == 'W'
end

e = 0
(0...n).reverse_each do |i|
  re[i] = e
  e += 1 if s[i] == 'E'
end

x = 300000
n.times do |i|
  x = [lw[i] + re[i], x].min
end
puts x