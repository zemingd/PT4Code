n,k=gets.split.map(&:to_i)
array=gets.split('').map(&:to_i)

changearray=[0,0]
group=1

(n-1).times{|i|
    if array[i]!=array[i+1]
        changearray.push(i+1)
    end
    group+=1
}

changearray.push(n)


if group/2<=k
    puts n
    exit
end


j=array[0]+1
ans=0
group.times{
    if changearray[j+2*k]
        ans=changearray[j+2*k]-changearray[j-1] if changearray[j+2*k]-changearray[j-1]>ans
    else
      break  
    end
    j+=2
}

puts ans