n = gets. to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
plus = 0
sum = 0
n.times do |i|
  if plus - a[i] > 0
    sum += a[i]
    plus = b[i]
  else
    sum += plus
    a[i] -= [plus,a[i]].min
    if b[i] - a[i] > 0
      sum += a[i]
      plus = b[i] - a[i]
    else
      sum += b[i]
      plus = 0
   end
  end
end
sum += [a[-1],plus].min

puts sum