n,m=gets.split.map &:to_i
a=(1..n).map{gets.split.map(&:to_i).drop(1)}.flatten
p (1..m).count{|i|a.count(i)==n}