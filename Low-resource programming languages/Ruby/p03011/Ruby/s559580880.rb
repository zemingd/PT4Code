a,b,c = gets.split(" ").map(&:to_i)
l = [a+b,b+c,a+c]
puts l.min