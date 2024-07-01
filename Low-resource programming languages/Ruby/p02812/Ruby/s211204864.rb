io = STDIN
N=io.gets.to_i
str=io.gets.chomp
puts str.scan("ABC").size
