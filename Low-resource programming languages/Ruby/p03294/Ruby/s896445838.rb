input = STDIN.read.split("\n")
p input[1].split(' ').map{|v| v.to_i - 1}.sum