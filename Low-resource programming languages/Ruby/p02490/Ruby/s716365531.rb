while "0 0\n"!=x=gets
a,b=x.split(" ").map(&:to_i)
if a-b<0
puts "#{a} #{b}"
else
puts "#{b} #{a}"end end