n=gets.to_i
q=gets.split.map &:to_i
p (1..n-2).count{|i|(q[i-1]-q[i])*(q[i]-q[i-1])<0}