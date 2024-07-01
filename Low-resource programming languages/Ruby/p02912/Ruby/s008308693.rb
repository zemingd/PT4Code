n,m=gets.split.map(&:to_i)
a=gets.split.map(&:to_i).sort
if n==1
  m.times do
    a[0]/=2
  end
  puts a[0]
  exit
end
m.times do
  b=a.pop/2
  s=0
  t=n-1
  c=(s+t)/2
  while true
    if s==n-2
      a[n-1]=b
      break
    end
    if t-s==1
      a.insert(t,b)
      break
    end
    if a[c]<b
      s=c
      c=(s+t)/2
    elsif a[c]>b
      t=c
      c=(s+t)/2
    else
      a.insert(c,b)
      break
    end
  end
end
puts a.inject(:+)
