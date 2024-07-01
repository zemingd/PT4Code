in = gets
sum = in.split(" ").collect{ |num| num.to_i }.inject(:+)
puts ( sum >= 22 )? "bust" : "win"