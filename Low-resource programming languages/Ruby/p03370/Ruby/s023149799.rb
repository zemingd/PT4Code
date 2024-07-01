n,x=gets.split(" ").map(&:to_i)
donutses = []
n.times.map{donutses << gets.to_i}
x = x - donutses.inject(:+)
puts n + x/donutses.min