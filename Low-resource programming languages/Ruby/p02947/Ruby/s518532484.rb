Ss = readlines.drop(1).map(&:chomp)

puts Ss.group_by{|s| s.chars.sort}.map{|_, a| (a.size.downto(2).inject(:*) || 0)/2}.inject(:+)