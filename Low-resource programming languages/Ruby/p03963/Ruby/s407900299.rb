nk = STDIN.gets.chomp.split(" ").map{|item| item.to_i}
cnt = 0
nk[0] = nk[0] - 1
p nk[1] * ((nk[1]-1) ** nk[0])
