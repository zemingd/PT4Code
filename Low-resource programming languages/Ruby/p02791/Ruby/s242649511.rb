n=gets.to_i
a=gets.split.map(&:to_i)
min=a[0]+1
sum=0
a.each do |i|
    if i<=min
        sum+=1
        min=i
    end
end

p sum