n=gets.to_i
button=n.times.map{gets.to_i}
count=1
last=button[0]
if last==2
    puts count
    exit
end
1000000.times.each do
    last=button[last-1]
     count+=1
     
    if last==2
    puts count
    exit
    end
   
end
puts -1