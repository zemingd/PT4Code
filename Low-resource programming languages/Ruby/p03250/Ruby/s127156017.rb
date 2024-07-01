a = gets.split
p a.permutation.to_a.map {|i,j,k| (i+j).to_i + k.to_i }.max