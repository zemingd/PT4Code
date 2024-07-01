a=gets.split("").map(&:to_i)
a=a[0..-2]

b=0

i=-1
loop{
  unless a[i]  
    break
else
    k=10**(-i-1)
    b+=a[i]*k
end
i-=1
    
}

sum=a.inject(:+)


if b%sum==0
    puts "Yes"
else
    puts "No"
end




