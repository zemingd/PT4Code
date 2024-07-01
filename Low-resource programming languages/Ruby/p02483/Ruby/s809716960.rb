input = gets
n = input.split(/\s+/).map{|i| i.to_i}

n = n.sort

print n[0]," ",n[1]," ",n[2],"\n"