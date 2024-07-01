n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

count = 0
n.times do |i|
  # i番目の街
  count += [a[i], b[i]].min

  a[i] -= b[i]
  if a[i] < 0
    b[i] = a[i].abs
  elsif a[i] >= 0
    b[i] = 0
  end
  
  # i+1番目の街
  count += [a[i+1], b[i]].min
  a[i+1] -= b[i]
  if a[i+1] < 0
    a[i+1] = 0
  end
end

puts count