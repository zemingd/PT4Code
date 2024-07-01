n=gets.to_i
a=Array.new(n,0)
x=Array.new(n).map{Array.new}
y=Array.new(n).map{Array.new}
n.times do |i|
  a[i]=gets.to_i
  a[i].times do |j|
    x[i][j],y[i][j]=gets.split.map(&:to_i)
  end
end
ans=0
can=true
[0,1].repeated_permutation(n).each do |bit|
  can=true
  n.times do |i|
    if bit[i]==1
      a[i].times do |j|
        if bit[x[i][j]-1]!=y[i][j]
          can=false
          break
        end
      end
    end
  end
  if can
    ans=[ans,bit.sum].max
  end
end
puts ans
