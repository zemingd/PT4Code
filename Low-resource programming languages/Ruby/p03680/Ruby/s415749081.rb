n=gets.to_i
button=n.times.map{gets.to_i}
count=1
last=button[0]
n.times.each do
    last=button[last-1]
    if last==3
    puts count
    exit
    end
    count+=1
end
puts -1