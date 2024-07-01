io = STDIN
x,y,z=io.gets.split.map(&:to_i)
x,y=y,x
x,z=z,x
puts "#{x} #{y} #{z}"
