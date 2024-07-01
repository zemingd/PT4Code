n=gets.to_i
all=[]
n.times.each do
    v=gets.split.map(&:to_i)
    all<<v

end
all=all.sort_by{|_,v|v}
count=0
for i in 0..all.length-1
    count+=all[i][0]
    if count<=all[i][1]
        next
    else
        puts "No"
        exit

    end
end
puts "Yes"