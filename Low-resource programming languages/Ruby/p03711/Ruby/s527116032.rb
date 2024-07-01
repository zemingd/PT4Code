G = [0,1,2,1,3,1,3,1,1,3,1,3,1]
X,Y = gets.split.map &:to_i
puts G[X] == G[Y] ? "Yes" : "No"