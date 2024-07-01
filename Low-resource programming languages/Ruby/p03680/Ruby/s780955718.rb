n=gets.to_i
a=Array.new(n,0)
n.times do |i|
    a[i]=gets.to_i
end

count=0
i=0
n.times do
    i=a[i]-1
    count+=1
    if i==1
        puts count
        return
    end
end
puts -1
