h=gets().chars.map(&:to_i);

print h;
cnt=0;

h.each_with_index{|x,i|
    cnt+=1 if (x == i%2);
}

print [h.size-cnt,cnt].min