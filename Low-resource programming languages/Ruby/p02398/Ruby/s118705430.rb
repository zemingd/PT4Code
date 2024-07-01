a,b,c = gets.split.map(&:to_i)
puts [a..b].select{|x| c%x == 0}.size