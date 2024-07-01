n,m=gets.split.map &:to_i
data=[]
shi={}
n.times{data<<[]}
m.times {
    d=gets.split.map(&:to_i)
    shi.store(d,0)
    data[d[0]-1]<<d[1]
}
data.each{|e|e.sort!}
shi.each{|d,k|
    printf("%06d%06d\n",d[0],1+data[d[0]-1].index(d[1]))
}