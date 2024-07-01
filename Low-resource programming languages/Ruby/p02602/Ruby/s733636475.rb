
n,k=gets.split.map(&:to_i)
a=gets.split.map(&:to_i)
first=1
for j in 1..k
    first=first*a[k-j]
end
#p first
for i in k..n-1
    v=1
   v=first*a[i]/a[i-k]
    #p v
    if first<v
        puts "Yes"
    else
    puts "No"
    end
    first=v
end
