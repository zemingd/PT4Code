N=gets.chomp.to_i
D=gets.chomp.split.map(&:to_i).sort!
a=D[D.size/2]-D[D.size/2-1]
puts a