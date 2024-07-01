n=gets.to_i
p=gets.split &:to_i
ps=p.sort

cnt=0
n.times do |i|
    if p[i]!=ps[i]
        cnt+=1
    end
end
puts cnt<3 ? "YES" : "NO"