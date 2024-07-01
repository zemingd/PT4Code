n=gets.to_i
a=gets.split.map(&:to_i)
b=gets.split.map(&:to_i)

cnt=0
n.times do |i|
  if a[i] >= b[i]
    cnt += b[i]
    next
  else
    cnt += a[i]
    b[i] -= a[i]
  end
  if a[i+1] >= b[i]
    cnt += b[i]
    a[i+1] -= b[i]
  else
    cnt += a[i+1]
    a[i+1] = 0 
  end
end

p cnt