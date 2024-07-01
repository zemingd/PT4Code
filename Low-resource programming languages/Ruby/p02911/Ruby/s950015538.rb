N,K,Q=gets.split.map &:to_i
B=[Q]*N
Q.times{B[gets.to_i-1]-=1}
B.map{|b|puts K>b ?:Yes: :No}