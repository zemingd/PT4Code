_,a,b=$<.map{|l|l=l.split;[*l.sort.permutation].index l}.sort
p b-a