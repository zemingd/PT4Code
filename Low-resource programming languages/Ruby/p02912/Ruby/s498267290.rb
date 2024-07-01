n,m=gets.split.map(&:to_i)
array=gets.split.map(&:to_i)

sum=0
array.map{|i| sum+=i}
array.sort!.reverse!

if n==1
    m.times{
        arr0=array[0]
        sum-=arr0-arr0/2
        array[0]-=arr0-arr0/2
    }
    p sum
    exit
end


m.times {
    arr0=array[0]
    sum-=arr0-arr0/2
    array[0]-=arr0-arr0/2
    halfnumber=array[0]
    array.shift
    index=(0...n-1).bsearch {|i| array[i] <= halfnumber}
    
    if index
        array.insert(index,halfnumber)
    else
        array.push(halfnumber)
    end
    
}

p sum