n=gets.to_i
p=gets.split.map(&:to_i)

count=1
(n-1).times do |i|
    if p[i]>p[i+1] 
        count+=1
    end
end
puts count
