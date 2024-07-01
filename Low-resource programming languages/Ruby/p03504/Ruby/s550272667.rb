n, c=gets.split.map &:to_i
a=[0]*(10**5*2)
n.times{
    s, t, c=gets.split.map &:to_i
    a[s*2-1]+=1
    a[2*t]-=1
}
x=0
puts a.map{|e|x+=e}.max
