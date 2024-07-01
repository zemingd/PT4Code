io = STDIN
p1,q1,r1=io.gets.split.map(&:to_i)
sum=p1+q1+r1
p [sum-p1,sum-q1,sum-r1].min
