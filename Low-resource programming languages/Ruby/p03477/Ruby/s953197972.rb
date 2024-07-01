a,b,c,d = gets.split.map(&:to_i)
puts (a+b) > (c+b) ? :Left : (a+b) == (c+b) ? :Balanced : :Right