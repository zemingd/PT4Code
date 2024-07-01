a,b=gets.split

a=a.to_i
b=b.to_i

array=gets.split.map(&:to_i)

array=array.sort.reverse


i=0
answer=0
b.times{
    answer=answer+array[i]
    
i=i+1    
}

puts answer