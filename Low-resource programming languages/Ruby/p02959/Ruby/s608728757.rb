n=gets.to_i
a=gets.split.map &:to_i
b=gets.split.map &:to_i

ans=0
n.times do |i|
    cnt1=[a[i],b[i]].min
    ans+=cnt1
    a[i]-=cnt1
    b[i]-=cnt1
    
    cnt2=[a[i+1],b[i]].min
    ans+=cnt2
    a[i+1]-=cnt2
    b[i]-=cnt2
end
p ans