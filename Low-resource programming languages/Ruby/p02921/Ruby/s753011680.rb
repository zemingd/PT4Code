s = gets
t = gets


sar = s.split
tar = t.split
counter = 0
sar.each_with_index{|x,i| counter += 1 if x == tar[i]}

print counter