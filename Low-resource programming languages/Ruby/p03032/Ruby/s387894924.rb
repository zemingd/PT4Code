n,k=gets.split.map(&:to_i)
v=gets.split.map(&:to_i)
m=-1/0.0
0.upto([n,k].min) do |i|
  0.upto([n-i,k-i].min) do |j|
    a=v[0,i]+v[n-j,j]
    a.sort!
    c=a.sum
    [k-i-j,i+j].min.times do |i|
      if a[i]<0
        c-=a[i]
      else
        break
      end
    end
    m=c if m<c
  end
end
puts m
