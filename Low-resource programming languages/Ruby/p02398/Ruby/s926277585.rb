a,b,c=gets.split,.map &:to_i
p (a..b).count{|i|c%i<1}