N,M=gets.split.map &:to_i
X=gets.split.map(&:to_i).sort.each_cons(2).map{|l,r|r-l}.sort
p(M<=N ? 0 : X[0..-N].inject(:+))