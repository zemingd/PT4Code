N = gets.chomp.to_i
S = gets.chomp.split
print "#{S.uniq.size==4 ? "Four" : "Three"}\n"