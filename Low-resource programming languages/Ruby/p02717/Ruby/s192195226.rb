X,Y,Z = gets.split.map &:to_i
X, Y = Y, X
X, Z = Z, X
puts [X,Y,Z].join(" ")