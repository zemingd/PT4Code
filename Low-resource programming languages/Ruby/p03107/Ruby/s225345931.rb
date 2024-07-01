a,b = gets.chomp.chars.group_by{|x|x}.map{|x,y|y.size}
a |= 0
b |= 0
puts [a,b].min*2