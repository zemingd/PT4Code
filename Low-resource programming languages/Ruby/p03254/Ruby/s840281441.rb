n,x=gets.split.map(&:to_i)
a=gets.split.map(&:to_i)

if a.sum==x
    puts a.length
    return
end

a=a.sort
count=0
(n-1).times do |i|
    x-=a[i]
    if x>=0
        count+=1
    else
        break
    end
end
puts count
