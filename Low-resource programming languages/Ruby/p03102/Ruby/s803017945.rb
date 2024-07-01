N, M, C=gets.split.map &:to_i
B=gets.split.map &:to_i
p (1..N).count{(gets.split.map &:to_i).zip(B).map{|a, b| a*b}.inject(:+)+C>0}