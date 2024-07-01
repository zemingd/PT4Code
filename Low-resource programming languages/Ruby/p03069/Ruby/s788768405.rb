n = gets.to_i
ss = gets.chomp.chars
b = 0
w = 0
n.times do |i|
  w += 1 if ss[i] == '.'
end
res = w
n.times do |i|
  ss[i] == '.' ? w -= 1 : b += 1
  res = [res, (w + b)].min
end
puts res