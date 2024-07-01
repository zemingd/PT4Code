a,b,c = gets.split(" ").map(&:to_i)
list = [a+b, a+c, b+c]
puts list.min
