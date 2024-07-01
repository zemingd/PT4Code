io = STDIN
a,b,c=io.gets.split.map(&:to_i)
x,y,z=[a,b,c].sort
puts 10*z+y+x
