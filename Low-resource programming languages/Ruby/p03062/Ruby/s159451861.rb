n=gets.to_i
array=gets.split.map(&:to_i)
absarray=array.map{|i| i.abs}
min=absarray.min
sum=absarray.inject(:+)

if array.include?(0)
    puts sum
    exit
end

(n-1).times{|i|
    if array[i]<0
        array[i]*=(-1)
        array[i+1]*=(-1)
    end
    i+=1
}

if array[-1]>0
    puts sum
else
    puts sum-min-min
end