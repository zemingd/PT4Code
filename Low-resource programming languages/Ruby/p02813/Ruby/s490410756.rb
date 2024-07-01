q=(1..gets.to_i).to_a.permutation.map &:join
p $<.reduce(0){|s,r|q.index(r.delete " \n")-s}.abs