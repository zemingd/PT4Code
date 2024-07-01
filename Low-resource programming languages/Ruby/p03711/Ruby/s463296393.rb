a=[[1,3,5,7,8,10,12],[2]]
x,y=gets.split.map(&:to_i)
puts a.map{|a|a.include?(x)} == a.map{|a|a.include?(y)} ? :Yes : :No