n = gets
n = n.split(/\s+/).map{|x| x.to_i}
print n[0]*n[1]," ",2*(n[0]+n[1]),"\n"