n = gets.to_i
list = gets.split(" ").map{|it| it.to_i}.sort
puts list[n/2] - list[n/2-1]