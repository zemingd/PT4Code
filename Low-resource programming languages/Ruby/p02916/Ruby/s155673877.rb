n = gets.to_i
a = gets.split(' ').map(&:to_i)
b = gets.split(' ').map(&:to_i)
c = gets.split(' ').map(&:to_i)
sum = 0
n.times do |i|
  sum += b[a[i]-1]
  if i >= 1 && a[i-1] + 1 == a[i]
    sum += c[a[i-1]-1]
  end
end
puts sum
