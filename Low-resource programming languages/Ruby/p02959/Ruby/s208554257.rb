N=gets.to_i
a=gets.split.map(&:to_i)
b=gets.split.map(&:to_i)
sum=0
N.times do |i|
  if a[i] >= b[i]
    sum += b[i]
    next
  else
    sum += a[i]
    b[i] -= a[i]
    if a[i+1] >= b[i]
      sum += b[i]
      a[i+1] -= b[i]
    else
      sum += a[i+1]
      a[i+1] = 0
    end
  end
end

puts sum