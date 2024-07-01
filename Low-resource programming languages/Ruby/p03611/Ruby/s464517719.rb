B=[0]*100;gets;$/=' ';$<.map{|e|p e; e=e.to_i;B[e-1]+=1;B[e]+=1;B[e+1]+=1};p B.max
