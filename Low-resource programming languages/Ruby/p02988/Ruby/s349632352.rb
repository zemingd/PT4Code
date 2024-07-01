n,*p=$<.read.split.map &:to_i
p p.each_cons(3).count{|x,y,z|x,z=[x,z].sort;y.between?(x,z)}