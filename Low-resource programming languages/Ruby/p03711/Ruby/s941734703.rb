a=[[1,3,5,7,8,10,12],[2]]
x,y=gets.split.map(&:to_i)
puts a.index{|a|a.include? x} == a.index{|a|a.include? y} ? "Yes" : "No"