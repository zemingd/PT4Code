n = gets. to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
plus = 0
sum = 0
n.times do |i|
  if b[i]+plus - a[i] < 0
    sum += b[i]+plus
    plus = 0
  else
    sum += a[i]
    plus = b[i]+plus - a[i]
  end
end
sum += [a[-1],plus].min

puts sum