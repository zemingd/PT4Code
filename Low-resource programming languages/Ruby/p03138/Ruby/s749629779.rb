temp=-1
n,k=gets.split.map &:to_i
10.times{|i|
 if k<2**i
   temp=i
   break
 end
}


as=gets.split.map &:to_i
max=-10
if k!=0
  (2**(temp-1)).upto((2**temp)-1){|i|
    sum=0
    as.each{|a|
      sum+=i^a
    }
    max=sum if max < sum
  }
  puts max
else
  puts as.inject(:+)
end