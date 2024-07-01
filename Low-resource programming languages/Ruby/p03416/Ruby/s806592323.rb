a,b=gets.split.map &:to_i
c=0;for i in a..b;s=i.to_s;c+=s.reverse==s ?1:0;end
puts c