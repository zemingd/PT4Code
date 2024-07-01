_n = gets.to_i

s = gets.chars

lw = []
re = []

w = 0
(0...(s.size)).each do |i|
  w += 1 if s[i] == 'W'
  lw[i] = w
end

e = 0
(0...(s.size)).reverse_each do |i|
  e += 1 if s[i] == 'E'
  re[i] = e
end

x = []

(0...(s.size)).each do |i|
  x[i] = lw[i] + re[i] - 1
end
puts x.min