n=gets.to_i
a=gets.split.map(&:to_i)
b=gets.split.map(&:to_i)

ans=0
n.times do |i|
    ans+=[a[i]+a[i+1],b[i]].min
    a[i+1]=[a[i+1]-[b[i]-a[i],0].max,0].max
end
puts ans
