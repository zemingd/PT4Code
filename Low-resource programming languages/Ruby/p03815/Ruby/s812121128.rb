x = gets.to_i
res = (x / 11) * 2
score = [6, 5]
x %= 11
while x > 0
  x -= score[res % 2]
  res += 1
end
puts res