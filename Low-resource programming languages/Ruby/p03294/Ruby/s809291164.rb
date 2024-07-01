gets()
arr=gets.split().map(&:to_i)
puts arr.reduce{|x,y|x+=y}-arr.size