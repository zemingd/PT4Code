while gets
e=0;10.times{|a|10.times{|b|10.times{|c|10.times{|d|e+=1 if a+b+c+d==$_.to_i}}}};puts e;
end