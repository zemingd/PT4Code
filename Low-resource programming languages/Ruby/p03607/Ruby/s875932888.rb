a=gets.to_i.times.map{gets.to_i}
puts a.group_by{|x|x}.count{|x,y|y.size%2==1}