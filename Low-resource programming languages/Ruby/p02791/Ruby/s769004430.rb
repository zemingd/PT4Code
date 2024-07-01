n=gets.to_i
p=gets.split.map(&:to_i)

count=0
min=n+1
n.times do |i|
    if p[i]<min
        count+=1
        min=p[i]
    end
end
puts count
