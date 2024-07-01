n = gets.chomp.split.map(&:to_i).sort_by{|x| x}.reverse
print 10*n[0]+n[1]+n[2]