cnt = 0
n,m,c=gets.split.map &:to_i
b=gets.split.map &:to_i
(1..n).map{gets.split.map &:to_i}.each{|a|
    s=c
    for i in 0...m
        s = s + b[i]*a[i]
    end
    cnt+=1 if s > 0
}
p cnt