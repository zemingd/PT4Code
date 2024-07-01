a1,a2,a3 = gets.chomp.split(" ").map(&:to_i)
x = (a1-a2).abs
y = (a2-a3).abs
z = (a3-a1).abs
puts [x+y,y+z,z+x].min