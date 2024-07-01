x,K,D = gets.split.map &:to_i
x = x.abs

move = K*D
move -= (move-(x-D))/(2*D)*(2*D) if x+D<move 

p (x-move).abs