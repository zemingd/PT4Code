n,x = gets.split.map(&:to_i)

arr = gets.split.map(&:to_i)
arr<<x

min = arr.min



arr = arr.map{|i| i-=min}




i = 0
max = arr.max

(n-1).times{
    
    maxkouho = arr[i].gcd(arr[i+1])

    max = [maxkouho,max].min
    
    
   i+=1 
}

p max


