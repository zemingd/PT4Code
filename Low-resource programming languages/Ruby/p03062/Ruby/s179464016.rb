N=gets.to_i
A=gets.split.map(&:to_i)
minus_count=A.count{|a| a<0}
B=A.map{|a| a.abs}
sum=B.inject(&:+)
min=B.min()

puts minus_count%2==0 ? sum : sum-2*min