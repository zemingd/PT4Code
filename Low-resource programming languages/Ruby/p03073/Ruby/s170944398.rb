h=gets().chars.map(&:to_i)
cnt=0;
h.each_with_index{|x,i|
    cnt+=1 if (x == i%2)
}
 
p [h.size-cnt,cnt].min