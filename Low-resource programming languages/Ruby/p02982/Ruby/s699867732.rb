def dist(a,b,size)
    ret = (0...size).map{|i|(a[i]-b[i])**2}.inject(:+)
    return Math.sqrt(ret)
end

n,d=gets.split.map &:to_i
x=[]
n.times{x<<gets.split.map(&:to_i)}
cnt=0
for i in 0...n
    for j in i+1...n
        dis=dist(x[i],x[j],d)
        if dis==dis.to_i
            cnt = cnt + 1
        end
    end
end
p cnt
