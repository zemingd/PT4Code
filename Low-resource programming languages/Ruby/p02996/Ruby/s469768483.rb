n=gets.to_i
all=[]
for i in 0..n-1
    all<<gets.split.map(&:to_i)
end
all=all.sort{|k,v| k[1]<=>v[1]}

time=0
for i in 0..all.length-1
    v=all[i]
    time+=v[0]
    
    if time>v[1]
        puts "No"
        exit
    end
end

puts "Yes"