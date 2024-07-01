n = gets.to_i
ans = 0
(1..n).to_a.permutation(n).to_a.each{|p|
  sum = p.map.with_index{|pi,i| (i+1)%pi }.inject(:+)
  ans=sum if sum>ans
}
p ans
