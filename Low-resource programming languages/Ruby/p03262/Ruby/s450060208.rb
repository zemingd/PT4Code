n,x = gets.split.map(&:to_i)

arr = gets.split.map(&:to_i)

min = arr.min

min = [min,x].min

arr = arr.map{|i| i-=min}


if arr.length == 1
    p arr[0]
else

i = 0
max = 10**20

(n-1).times{
    
    maxkouho = arr[i].gcd(arr[i+1])

    max = [maxkouho,max].min
    
    
   i+=1 
}

p max

end


