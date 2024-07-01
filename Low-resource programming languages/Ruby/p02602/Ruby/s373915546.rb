n,k=gets.split.map(&:to_i)
a=gets.split.map(&:to_i)

#p first
for i in k..n-1
  
    if a[i-k]<a[i]
        puts "Yes"
    else
    puts "No"
    end

end