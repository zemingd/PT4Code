x, y, z = gets.split.map(&:to_i)

x, y = y, x
z, x = x, z

puts [x,y,z].join(" ")