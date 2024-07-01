n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
a.reverse!
b.reverse!
sum = 0
n.times do |i|
  if b[i] >= a[i]
    sum += a[i]
    b[i] -= a[i]
    a[i] = 0
    if b[i] >= 1
      if a[i+1] - b[i] >= 0
        a[i+1] -=  b[i]
        sum += b[i]
      else
        sum += a[i+1]
        a[i+1] = 0
      end
    end
  else
    sum += b[i]
    a[i] -= b[i]
  end
end
puts sum