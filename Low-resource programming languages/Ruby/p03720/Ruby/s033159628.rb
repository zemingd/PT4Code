n,m=gets.split.map &:to_i;
a=$<.map{|s|s.split.map &:to_i}.flatten;
1.upto(n){|i|p a.count{|j|i==j}}
