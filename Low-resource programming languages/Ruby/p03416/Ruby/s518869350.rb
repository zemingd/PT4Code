a=gets.chop;b=gets.chop
c=0;for s in a..b;;c+=s.reverse==s ?1:0;end
puts c