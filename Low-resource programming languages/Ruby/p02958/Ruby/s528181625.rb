n=gets.to_i
pa=gets.split(&:to_i)
ps=pa.sort

cnt=0
n.times do |i|
    if pa[i]!=ps[i]
        cnt+=1
    end
end
puts cnt<3 ? "YES" : "NO"