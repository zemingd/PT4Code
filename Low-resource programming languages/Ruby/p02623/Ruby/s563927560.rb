n,m,k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
c = a.clone
d = b.clone
for i in 1..(n-1)
  c[i] = c[i-1]+c[i]
end
c.unshift(0)
for j in 1..(m-1)
  d[j] = d[j-1]+d[j]
end
d.unshift(0)

upper = 400001
lower = 0
while upper - lower > 1
  mid = (upper+lower)/2
  judge = false
  for l in [0,mid-m].max..[mid,n].min
    if c[l]+d[mid-l] <= k
      judge = true
      break
    end
  end
  if judge
    lower = mid
  else
    upper = mid
  end
end
puts lower