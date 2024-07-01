# Your code here!
a,b=gets.split
a=a.to_i
b=b.to_i

arr=Array.new(a,0)

arr2=gets.split.map{|i| i.to_i}
i=0
a.times{
    arr[arr2[i]-1]+=1
    i+=1
}
    
arr=arr.sort.reverse

ans=arr[0..b-1].inject(:+)
p a-ans