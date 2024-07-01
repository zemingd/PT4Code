a,b,c=gets.split.map(&:to_i)
n=gets.to_i

arr=[a,b,c].sort


n.times{
    
    arr[2]=2*arr[2]
}

puts arr[0]+arr[1]+arr[2]


