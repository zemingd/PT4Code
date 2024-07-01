N=gets.to_i
array=gets.chomp.split(" ").map(&:to_i)
maxim=array.max
ARRAY=Array.new(maxim+1, false)
array.each do |a|
    ARRAY[a]=true
end
setwise=false
c=2
while c<=maxim do
    count=0
    n=c
    while n<=maxim do
        count+=1 if ARRAY[n]
        n+=c
    end
    if count == N
        puts "not coprime"
        exit
    end
    if count > 1
        setwise=true
    end
    c+=1
end
if setwise
    puts "setwise coprime"
else
    puts "pairwise coprime"
end
