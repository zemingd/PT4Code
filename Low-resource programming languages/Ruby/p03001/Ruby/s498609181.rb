W,H,X,Y = gets.split.map &:to_i
puts [W*H*0.5, (X*2 == W && Y*2 == H) ? 1 : 0] * " "