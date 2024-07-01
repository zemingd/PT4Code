n,m=gets.split.map(&:to_i)
a=gets.split.map(&:to_i)
m.times do
  f=true
  while f
    f=false
    (n/2-1).downto(0) do |i|
      if a[i]<a[i*2+1]
        a[i],a[i*2+1]=a[i*2+1],a[i]
        f=true if !f
      end
      if i*2+2<n&&a[i]<a[i*2+2]
        a[i],a[i*2+2]=a[i*2+2],a[i]
        f=true if !f
      end
    end
  end
  a[0]/=2
end
puts a.sum
