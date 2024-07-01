input = STDIN.read.split("\n")
print input[1].split(' ').map{|v| v.to_i - 1}.sum