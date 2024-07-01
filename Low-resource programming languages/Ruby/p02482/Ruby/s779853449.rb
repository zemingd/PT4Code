line = gets
ary = line.split(" ").map!{|x| x.to_i}
e = ary[0] > ary[1] ? ">" : ary[0] < ary[1] ? "<" : "=="
print ary[0], " " , e , " " , ary[1] , "\n"