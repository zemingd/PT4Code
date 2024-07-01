a=[[1,3,5,7,8,10,12],[4,6,9,11],[2]]
x,y=gets.split.map &:to_i
puts a.select{|i|i.include? x}==a.select{|i|i.include? y} ? :Yes : :No