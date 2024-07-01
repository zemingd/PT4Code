n=gets.to_i
s=[nil]
t=[nil]
n.times do |i|
  s[i+1]=[]
  t[i+1]=[]
end
n.times do |i|
  gets.to_i.times do
    x,y=gets.split.map(&:to_i)
    if y==1
      s[x] << i+1
    else
      t[x] << i+1
    end
  end
end
m=0
[1,0].repeated_permutation(n) do |b|
  c=b.count(1)
  if c<=m
    next
  end
  f=true
  n.times do |i|
    if b[i]==1
      t[i+1].each do |tt|
        if b[tt-1]==1
          f=false
          break
        end
      end
    else
      s[i+1].each do |ss|
        if b[ss-1]==1
          f=false
          break
        end
      end
    end
    if !f
      break
    end
  end
  if f
    m=b.count(1)
  end
end
puts m
