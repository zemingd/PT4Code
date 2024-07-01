n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
sum = 0
n.times do |i|
  diff = a[i] + a[i+1] - b[i]
  if diff < 0
    sum += a[i] + a[i+1]
    a[i],a[i+1] = 0,0
  else
    sum += b[i]
    a_1 = b[i]
    a_2 = (a_1 - b[i]) > 0 ? (a_1 - b[i]) : 0
    a[i] -= a_1
    a[i+1] -= a_2
  end
end
puts sum