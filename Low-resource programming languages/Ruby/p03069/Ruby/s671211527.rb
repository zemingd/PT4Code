_=gets;
s=gets.chomp;

rng=(0...s.size-1).select{|i|s[i,2]==".#"}.map{|x|x+1}

r= [0,*rng,s.size].map{|n|
    s.chars.each_with_index.select{|x,i|
        x != (i<n ? ".": "#")
    }.size
}.min
p r