x,n,*ps=$<.read.split.map &:to_i
c=[]
ps.each{|e| c[e]=true }
0.step{|i|
  [-1,1].each{|d|
    t=x+d*i
    next if c[t]
    puts t
    exit
  }
}