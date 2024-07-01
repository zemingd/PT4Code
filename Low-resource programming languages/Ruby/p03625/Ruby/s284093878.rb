gets
puts (gets.split.map(&:to_i).group_by{|x|x}.map{|x,y|[x,y.size]}.select{|x,y|y>=4}.map{|x,y|x}.max || 0)**2