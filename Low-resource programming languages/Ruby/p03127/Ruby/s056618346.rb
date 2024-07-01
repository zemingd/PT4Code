n=gets.to_i
array=gets.split.map(&:to_i)
ans=array[0]

i=0
(n-1).times{
 ans=ans.gcd(array[i+1])
 i+=1   
}

puts ans