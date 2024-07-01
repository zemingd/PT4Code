a,b,c=gets.split.map(&:to_i)
t=[a,b,c].sort
p ((t[1]-t[0])>0?(t[1]-t[0]):-(t[1]-t[0]))+((t[2]-t[1])>0?(t[2]-t[1]):-(t[2]-t[1]))