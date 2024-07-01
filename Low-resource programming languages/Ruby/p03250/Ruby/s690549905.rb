a,b,c=gets.split.map(&:to_i)
puts [a,b,c].permutation(3).map{|x,y,z| 10*x+y+z}.max