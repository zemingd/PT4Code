t=gets.chomp
c=0
readlines.join.split(/\s+/).map{|w|c+=1 if w.casecmp(t)==0}
puts c