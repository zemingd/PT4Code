n,k=gets.split.map &:to_i
as=gets.split.map &:to_i
max=-1000000000000
0.upto(k){|i|
  sum=0
  as.each{|a|
    sum+=i^a
  }
  max=sum if max < sum
}
puts max