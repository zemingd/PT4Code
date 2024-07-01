X, Y = gets.split.map(&:to_i)
t = 0
while t < X do
  k = X-t
  legs = t * 2 + k * 4
  if Y == legs
    p "Yes"
    break
  end
  t += 1
end
if Y != legs
  p "No"
end